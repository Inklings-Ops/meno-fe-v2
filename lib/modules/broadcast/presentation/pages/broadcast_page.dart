import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/common/widgets/dialog_box/m_confirmation_dialog.dart';
import 'package:meno_fe_v2/core/router/m_router.dart';
import 'package:meno_fe_v2/di/injection.dart';
import 'package:meno_fe_v2/modules/broadcast/application/broadcast/broadcast_notifier.dart';
import 'package:meno_fe_v2/modules/broadcast/application/timer/timer_notifier.dart';
import 'package:meno_fe_v2/modules/broadcast/domain/entities/broadcast.dart';
import 'package:meno_fe_v2/modules/broadcast/presentation/widgets/broadcast/broadcast_tab_view.dart';
import 'package:meno_fe_v2/modules/broadcast/presentation/widgets/broadcast/delete_button.dart';
import 'package:meno_fe_v2/services/agora_service.dart';

class BroadcastPage extends StatefulHookConsumerWidget {
  const BroadcastPage({super.key, required this.broadcast});
  final Broadcast broadcast;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _BroadcastPageState();
}

class _BroadcastPageState extends ConsumerState<BroadcastPage>
    with TickerProviderStateMixin {
  final _agora = di<AgoraService>();

  Future<void> delete() async {
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

      Future.delayed(Duration.zero, () {});
      if (context.mounted) {
        AutoRouter.of(context).replaceAll([const LayoutRoute()]);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final tabController = useTabController(initialLength: 4, vsync: this);
    final event = ref.watch(broadcastProvider.notifier);
    final timerState = ref.watch(timerProvider);
    final timerEvent = ref.watch(timerProvider.notifier);

    ref.listen<BroadcastState>(broadcastProvider, (previous, next) {
      next.startedOption.fold(
        () => null,
        (either) => either.fold(
          (l) => null,
          (b) async {
            timerEvent.start();
          },
        ),
      );
    });

    final isMuted = useState(false);

    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: MSize.h(46),
          backgroundColor: Colors.white,
          actions: [DeleteButton(delete: delete)],
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
            padding: EdgeInsets.zero,
            tabs: [
              SizedBox(
                height: MSize.h(30),
                child: const Tab(text: 'Broadcast'),
              ),
              SizedBox(
                height: MSize.h(30),
                child: const Tab(text: 'Notes'),
              ),
              SizedBox(
                height: MSize.h(30),
                child: const Tab(text: 'Live Bible'),
              ),
              SizedBox(
                height: MSize.h(30),
                child: const Tab(text: 'Chat'),
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: tabController,
          children: [
            BroadcastTabView(
              broadcast: widget.broadcast,
              end: () {},
              isMute: isMuted.value,
              mute: () => mute(isMuted.value),
              start: () {},
              started: false,
              loading: false,
            ),
            const Text('Notes'),
            const Text('Bible'),
            const Text('Chat'),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _agora.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      final event = ref.read(broadcastProvider.notifier);
      _agora.initialize();
      event.initialized(widget.broadcast);
    });
  }

  mute(bool isMute) async {
    await _agora.muteAudio(!isMute);
  }
}
