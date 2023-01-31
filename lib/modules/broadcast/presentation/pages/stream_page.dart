import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:meno_fe_v2/common/constants/m_colors.dart';
import 'package:meno_fe_v2/common/constants/m_keys.dart';
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

class StreamPage extends StatefulHookConsumerWidget {
  const StreamPage({super.key, required this.broadcast});
  final Broadcast broadcast;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _StreamPageState();
}

class _StreamPageState extends ConsumerState<StreamPage> {
  bool loading = false;

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
          actions: [LeaveButton(onLeavePressed: onLeavePressed), MSize.hS(16)],
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
      _agora.initialize(isHost: false).whenComplete(() => _joinBroadcast());
    });
  }

  Future<void> _joinBroadcast() async {
    await _agora
        .join(
      token: widget.broadcast.agoraToken!,
      channelId: widget.broadcast.id,
    )
        .whenComplete(() {
      final socketEvent = ref.read(socketDataProvider.notifier);
      socketEvent.joinBroadcast(
        broadcastId: widget.broadcast.id,
        fullName: widget.broadcast.creator!.fullName!,
      );
      setState(() => loading = false);
    });
  }

  void onLeavePressed() {
    ref.read(socketDataProvider.notifier).leaveBroadcast(widget.broadcast.id);
    _agora.leave();
    AutoRouter.of(MKeys.streamScaffoldKey.currentContext!).pop();
  }

  Future<bool> onWillPop() async {
    ref.read(socketDataProvider.notifier).leaveBroadcast(widget.broadcast.id);
    _agora.leave();
    return true;
  }
}
