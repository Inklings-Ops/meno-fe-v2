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
import 'package:meno_fe_v2/modules/broadcast/domain/entities/broadcast.dart';
import 'package:meno_fe_v2/modules/broadcast/presentation/widgets/broadcast/broadcast_artwork.dart';
import 'package:meno_fe_v2/modules/broadcast/presentation/widgets/stream/leave_button.dart';
import 'package:meno_fe_v2/modules/broadcast/presentation/widgets/stream/listeners_list.dart';
import 'package:meno_fe_v2/modules/broadcast/presentation/widgets/stream/stream_bottom_sheet.dart';
import 'package:meno_fe_v2/modules/broadcast/presentation/widgets/stream/stream_page_skeleton.dart';
import 'package:meno_fe_v2/services/agora_service.dart';
import 'package:meno_fe_v2/services/socket/models.dart';
import 'package:meno_fe_v2/services/socket/socket_data_notifier.dart';
import 'package:wakelock/wakelock.dart';

class StreamPage extends StatefulHookConsumerWidget {
  const StreamPage({super.key, required this.broadcast});
  final Broadcast broadcast;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _StreamPageState();
}

class _StreamPageState extends ConsumerState<StreamPage> {
  bool loading = false;

  final backgroundService = FlutterBackgroundService();

  final _agora = di<AgoraService>();

  @override
  Widget build(BuildContext context) {
    final tabController = useTabController(initialLength: 3);

    if (loading) {
      return StreamPageSkeleton(broadcast: widget.broadcast);
    }

    ref.listen(socketService, (_, AsyncValue<SocketData> data) {
      if (data.value.runtimeType == EndedBroadcastData) {
        _agora.leave();
        backgroundService.invoke(endTask);
        AutoRouter.of(context).popUntilRoot();
        ScaffoldMessenger.of(MKeys.layoutScaffoldKey.currentContext!)
            .showSnackBar(
          SnackBar(
            content: Text(
              '${widget.broadcast.creator?.fullName} has ended the broadcast.',
            ),
          ),
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
            LeaveButton(
              onLeavePressed: () => onLeavePressed(context),
            ),
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
              BroadcastArtwork(imageUrl: widget.broadcast.imageUrl),
              MSize.vS(10),
              const Align(
                alignment: Alignment.centerLeft,
                child: ListenersList(),
              ),
            ],
          ),
        ),
        bottomSheet: StreamBottomSheet(
          broadcast: widget.broadcast,
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
      Wakelock.enable();
      backgroundService.invoke(streamTask, {
        'title': widget.broadcast.title.get(),
        'content': 'Streaming live now.',
      });
      await _agora.initialize(isHost: false).then((_) {
        return _joinBroadcast();
      });
      backgroundService.startService();
    });
  }

  Future<void> _joinBroadcast() async {
    final id = widget.broadcast.id;
    final token = widget.broadcast.agoraToken!;
    final fullName = widget.broadcast.creator!.fullName!;
    await _agora.join(token: token, channelId: id).then((value) {
      final socketEvent = ref.read(socketDataProvider.notifier);
      socketEvent.joinBroadcast(broadcastId: id, fullName: fullName);
    });
    setState(() => loading = false);
  }

  Future<void> onLeavePressed(BuildContext context) async {
    Wakelock.disable();
    ref.read(socketDataProvider.notifier).leaveBroadcast(widget.broadcast.id);
    _agora.leave();
    backgroundService.invoke(endTask);
    AutoRouter.of(context).pop();
  }

  Future<bool> onWillPop() async {
    Wakelock.disable();
    ref.read(socketDataProvider.notifier).leaveBroadcast(widget.broadcast.id);
    await _agora.leave();
    backgroundService.invoke(endTask);
    return true;
  }
}
