import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:meno_fe_v2/common/constants/m_keys.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/common/widgets/dialog_box/m_confirmation_dialog.dart';
import 'package:meno_fe_v2/core/router/m_router.dart';
import 'package:meno_fe_v2/di/injection.dart';
import 'package:meno_fe_v2/modules/bible/presentation/pages/bible_page.dart';
import 'package:meno_fe_v2/modules/broadcast/application/broadcast/broadcast_notifier.dart';
import 'package:meno_fe_v2/modules/broadcast/application/timer/timer_notifier.dart';
import 'package:meno_fe_v2/modules/broadcast/domain/entities/broadcast.dart';
import 'package:meno_fe_v2/modules/broadcast/presentation/widgets/broadcast/broadcast_tab_view.dart';
import 'package:meno_fe_v2/services/agora_service.dart';
import 'package:meno_fe_v2/services/socket/socket_data_notifier.dart';
import 'package:permission_handler/permission_handler.dart';

class BroadcastPage extends StatefulHookConsumerWidget {
  const BroadcastPage({super.key, required this.broadcast});
  final Broadcast broadcast;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _BroadcastPageState();
}

class _BroadcastPageState extends ConsumerState<BroadcastPage> {
  final _agora = di<AgoraService>();

  @override
  Widget build(BuildContext context) {
    final tinker = useSingleTickerProvider();
    final tabController = useTabController(initialLength: 2, vsync: tinker);

    final timerEvent = ref.watch(timerProvider.notifier);
    final socketEvent = ref.read(socketDataProvider.notifier);

    final isLive = ref.read(socketDataProvider).isLive;
    final isMuteState = useState<bool>(false);

    ref.listen<BroadcastState>(broadcastProvider, (previous, next) {
      next.startedOption.fold(
        () => null,
        (either) => either.fold(
          (l) => null,
          (b) async {
            await _agora.start(token: b.agoraToken!, channelId: b.id);
            socketEvent.startBroadcast(widget.broadcast.id);
            timerEvent.start();
          },
        ),
      );
    });

    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              pinned: true,
              snap: true,
              floating: true,
              toolbarHeight: isLive ? MSize.h(20) : MSize.h(40),
              backgroundColor: Colors.white,
              scrolledUnderElevation: 0,
              bottom: TabBar(
                controller: tabController,
                indicatorSize: TabBarIndicatorSize.label,
                labelStyle: TextStyle(
                  fontSize: MSize.fS(14),
                  color: Colors.black,
                ),
                labelPadding: EdgeInsets.zero,
                indicatorColor: Colors.black,
                indicatorWeight: MSize.r(0.6),
                dividerColor: const Color.fromRGBO(0, 0, 36, 0.02),
                padding: EdgeInsets.zero,
                tabs: [
                  SizedBox(
                    height: MSize.h(24),
                    child: const Tab(text: 'Broadcast'),
                  ),
                  // SizedBox(
                  //   height: MSize.h(24),
                  //   child: const Tab(text: 'Notes'),
                  // ),
                  SizedBox(
                    height: MSize.h(24),
                    child: const Tab(text: 'Live Bible'),
                  ),
                  // SizedBox(
                  //   height: MSize.h(24),
                  //   child: const Tab(text: 'Chat'),
                  // ),
                ],
              ),
            ),
          ],
          body: TabBarView(
            key: MKeys.broadcastPageMainTabKey,
            controller: tabController,
            children: [
              BroadcastTabView(
                broadcast: widget.broadcast,
                isMute: isMuteState.value,
                onDelete: onDelete,
                onEnd: onEnd,
                onMute: () async {
                  isMuteState.value = !isMuteState.value;
                  await _agora.muteAudio(!isMuteState.value);
                },
                onStart: onStart,
              ),
              // const ComingSoonPage(),
              const BiblePage(),
              // const ComingSoonPage(),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      ref.read(broadcastProvider.notifier).initialized(widget.broadcast);
      await _agora.initialize(isHost: true);
    });
  }

  Future<void> onDelete() async {
    final shouldDelete = await showDialog<bool>(
      context: context,
      builder: (context) => const MConfirmationDialog(
        title: 'Delete broadcast?',
        buttonTitle: 'Delete',
      ),
    );

    if (shouldDelete == true) {
      final event = ref.read(broadcastProvider.notifier);
      event.deletePressed(widget.broadcast.id);
      await _agora.leave();

      await Future.delayed(Duration.zero);
      if (context.mounted) {
        AutoRouter.of(context).replaceAll([const LayoutRoute()]);
      }
    }
  }

  Future<void> onEnd() async {
    final shouldEnd = await showDialog<bool>(
      context: context,
      builder: (context) => const MConfirmationDialog(),
    );
    if (shouldEnd == true) {
      final details = widget.broadcast.copyWith(
        timeElapsed: ref.watch(timerProvider).elapsed,
        liveListeners: ref.watch(socketDataProvider).numberOfLiveListeners,
      );

      await _agora.leave();
      ref.read(socketDataProvider.notifier).endBroadcast(widget.broadcast.id);
      ref.read(timerProvider.notifier).stop();

      await Future.delayed(Duration.zero);
      if (context.mounted) {
        AutoRouter.of(context).pushAndPopUntil(
          BroadcastFeedbackRoute(broadcast: details),
          predicate: (_) => false,
        );
      }
    }
  }

  Future<void> onMute(bool isMute) async => _agora.muteAudio(!isMute);

  Future<void> onStart() async {
    final scaffoldContext = ScaffoldMessenger.of(context);

    if (await isMicrophoneInUse()) {
      scaffoldContext.showSnackBar(
        const SnackBar(content: Text('Your microphone is already in use.')),
      );
    } else {
      ref.read(broadcastProvider.notifier).startPressed(widget.broadcast.id);
    }
  }

  Future<bool> isMicrophoneInUse() async {
    final permissionStatus = await Permission.microphone.status;
    if (permissionStatus != PermissionStatus.granted) {
      final result = await Permission.microphone.request();
      return result == PermissionStatus.granted;
    } else {
      return true;
    }
  }
}
