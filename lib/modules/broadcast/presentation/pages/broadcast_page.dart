import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_background_service/flutter_background_service.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:meno_fe_v2/common/constants/m_keys.dart';
import 'package:meno_fe_v2/common/constants/m_strings.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/common/widgets/dialog_box/m_confirmation_dialog.dart';
import 'package:meno_fe_v2/core/router/m_router.dart';
import 'package:meno_fe_v2/di/injection.dart';
import 'package:meno_fe_v2/modules/bible/presentation/widgets/bible_reader.dart';
import 'package:meno_fe_v2/modules/bible/presentation/widgets/scripture_selector.dart';
import 'package:meno_fe_v2/modules/broadcast/application/broadcast/broadcast_notifier.dart';
import 'package:meno_fe_v2/modules/broadcast/application/timer/timer_notifier.dart';
import 'package:meno_fe_v2/modules/broadcast/domain/entities/broadcast.dart';
import 'package:meno_fe_v2/modules/broadcast/presentation/widgets/broadcast/broadcast_tab_view.dart';
import 'package:meno_fe_v2/services/agora_service.dart';
import 'package:meno_fe_v2/services/socket/socket_data_notifier.dart';
import 'package:wakelock/wakelock.dart';

class BroadcastPage extends StatefulHookConsumerWidget {
  final Broadcast broadcast;
  const BroadcastPage({super.key, required this.broadcast});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _BroadcastPageState();
}

class _BroadcastPageState extends ConsumerState<BroadcastPage> {
  final _agora = di<AgoraService>();
  bool starting = false;

  final backgroundService = FlutterBackgroundService();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final Size size = MediaQuery.of(context).size;
    final bool isTablet = size.shortestSide >= 600 && size.longestSide >= 960;

    final tinker = useSingleTickerProvider();
    final tabController = useTabController(initialLength: 2, vsync: tinker);

    final timerEvent = ref.watch(timerProvider.notifier);
    final socketEvent = ref.read(socketDataProvider.notifier);

    final isLive = ref.read(socketDataProvider).isLive;
    final isMuteState = useState<bool>(false);

    ref.listen<BroadcastState>(broadcastProvider, (previous, next) {
      next.startedOption.fold(
        () => setState(() => starting = false),
        (either) => either.fold(
          (l) => null,
          (b) async {
            setState(() => starting = false);
            if (await backgroundService.isRunning() == false) {
              backgroundService.invoke(broadcastTask, {
                'title': b.title.get(),
                'content': 'You are live.',
              });
              await _agora.start(token: b.agoraToken!, channelId: b.id);
              timerEvent.start();
              socketEvent.startBroadcast(widget.broadcast.id);
              backgroundService.startService();
            }
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
              toolbarHeight: isLive ? MSize.h(0) : MSize.h(0),
              backgroundColor: Colors.white,
              scrolledUnderElevation: 0,
              bottom: TabBar(
                controller: tabController,
                indicatorSize: TabBarIndicatorSize.label,
                labelStyle:
                    isTablet ? textTheme.titleLarge : textTheme.titleMedium,
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
                  SizedBox(
                    height: MSize.h(24),
                    child: const Tab(text: 'Live Bible'),
                  ),
                ],
              ),
            ),
          ],
          body: TabBarView(
            key: MKeys.broadcastPageMainTabKey,
            controller: tabController,
            children: [
              BroadcastTabView(
                starting: starting,
                broadcast: widget.broadcast,
                isMute: isMuteState.value,
                onDelete: onDelete,
                onEnd: onEnd,
                onMute: () async {
                  isMuteState.value = !isMuteState.value;
                  await _agora.muteAudio(!isMuteState.value);
                },
                onStart: starting ? () {} : onStart,
              ),
              SingleChildScrollView(
                primary: false,
                child: Column(
                  children: [
                    MSize.vS(30),
                    const ScriptureSelector(),
                    const BibleReader(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    Wakelock.disable();
    _agora.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      Wakelock.enable();
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
      backgroundService.invoke(endTask);

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

      Wakelock.disable();
      await _agora.leave();
      ref.read(socketDataProvider.notifier).endBroadcast(widget.broadcast.id);
      ref.read(timerProvider.notifier).stop();
      backgroundService.invoke(endTask);

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
    setState(() => starting = true);
    ref.read(broadcastProvider.notifier).startPressed(widget.broadcast.id);
  }
}
