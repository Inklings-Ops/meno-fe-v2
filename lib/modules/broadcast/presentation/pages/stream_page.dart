import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_background_service/flutter_background_service.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:meno_fe_v2/common/constants/m_colors.dart';
import 'package:meno_fe_v2/common/constants/m_keys.dart';
import 'package:meno_fe_v2/common/constants/m_strings.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/di/injection.dart';
import 'package:meno_fe_v2/modules/broadcast/domain/entities/join_broadcast_data.dart';
import 'package:meno_fe_v2/modules/broadcast/presentation/widgets/broadcast/broadcast_artwork.dart';
import 'package:meno_fe_v2/modules/broadcast/presentation/widgets/stream/leave_button.dart';
import 'package:meno_fe_v2/modules/broadcast/presentation/widgets/stream/listeners_list.dart';
import 'package:meno_fe_v2/modules/broadcast/presentation/widgets/stream/stream_bottom_sheet.dart';
import 'package:meno_fe_v2/modules/broadcast/presentation/widgets/stream/stream_page_skeleton.dart';
import 'package:meno_fe_v2/services/livekit_service.dart';
import 'package:meno_fe_v2/services/socket/models.dart';
import 'package:meno_fe_v2/services/socket/socket_data_notifier.dart';

class StreamPage extends StatefulHookConsumerWidget {
  const StreamPage({super.key, required this.joinedBroadcast});

  final JoinBroadcastData joinedBroadcast;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _StreamPageState();
}

class _StreamPageState extends ConsumerState<StreamPage> {
  bool loading = false;

  final livekit = di<LivekitService>();

  final backgroundService = FlutterBackgroundService();

  @override
  Widget build(BuildContext context) {
    final broadcast = widget.joinedBroadcast.broadcast;

    final tabController = useTabController(initialLength: 3);

    final scaffoldMessenger = ScaffoldMessenger.of(
      MKeys.layoutScaffoldKey.currentContext!,
    );

    if (loading) {
      return StreamPageSkeleton(broadcast: widget.joinedBroadcast.broadcast);
    }

    ref.listen(socketService, (_, AsyncValue<SocketData> data) {
      final creator = broadcast.creator!;
      if (data.value.runtimeType == EndedBroadcastData) {
        livekit.leave();
        backgroundService.invoke(endTask);
        AutoRouter.of(context).popUntilRoot();
        scaffoldMessenger.showSnackBar(
          SnackBar(content: Text('${creator.fullName} ended the broadcast.')),
        );
      }
    });

    return WillPopScope(
      onWillPop: onWillPop,
      child: Scaffold(
        key: MKeys.streamScaffoldKey,
        appBar: AppBar(
          toolbarHeight: MSize.h(46),
          backgroundColor: Colors.transparent,
          scrolledUnderElevation: 0,
          elevation: 0,
          automaticallyImplyLeading: false,
          actions: [
            LeaveButton(onLeavePressed: () => onLeavePressed(context)),
            MSize.hS(16)
          ],
        ),
        backgroundColor: MColors.splashScreenBg,
        extendBodyBehindAppBar: true,
        extendBody: true,
        body: Container(
          padding: MSize.pSymmetric(h: 16),
          height: MSize.sh(1),
          child: Column(
            children: [
              MSize.vS(70),
              BroadcastArtwork(imageUrl: broadcast.imageUrl),
              MSize.vS(10),
              const Align(
                alignment: Alignment.centerLeft,
                child: ListenersList(),
              ),
            ],
          ),
        ),
        bottomSheet: StreamBottomSheet(
          broadcast: broadcast,
          tabController: tabController,
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    loading = true;

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      backgroundService.invoke(streamTask, {
        'title': widget.joinedBroadcast.broadcast.title.get(),
        'content': 'Streaming live now.',
      });
      await _joinBroadcast();
      backgroundService.startService();
    });
  }

  Future<void> _joinBroadcast() async {
    final id = widget.joinedBroadcast.broadcast.id;
    final fullName = widget.joinedBroadcast.broadcast.creator!.fullName!;
    await livekit.connect(widget.joinedBroadcast.broadcastToken).then((_) {
      final socketEvent = ref.read(socketDataProvider.notifier);
      socketEvent.joinBroadcast(broadcastId: id, fullName: fullName);
    });
    setState(() => loading = false);
  }

  Future<void> onLeavePressed(BuildContext context) async {
    final broadcastId = widget.joinedBroadcast.broadcast.id;
    final router = AutoRouter.of(context);
    ref.read(socketDataProvider.notifier).leaveBroadcast(broadcastId);
    await livekit.leave();
    backgroundService.invoke(endTask);
    router.pop();
  }

  Future<bool> onWillPop() async {
    final broadcastId = widget.joinedBroadcast.broadcast.id;
    ref.read(socketDataProvider.notifier).leaveBroadcast(broadcastId);
    await livekit.leave();
    await livekit.dispose();
    backgroundService.invoke(endTask);
    return true;
  }
}
