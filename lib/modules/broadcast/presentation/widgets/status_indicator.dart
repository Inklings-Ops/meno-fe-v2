import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/modules/broadcast/domain/entities/broadcast.dart';
import 'package:meno_fe_v2/services/socket/socket_data_notifier.dart';
import 'package:meno_fe_v2/services/socket/socket_service.dart';

class StatusIndicator extends ConsumerWidget {
  const StatusIndicator({
    super.key,
    this.height,
    this.broadcast,
  });

  final double? height;
  final Broadcast? broadcast;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;

    SocketState socketState = ref.watch(socketDataProvider);

    final isLive = socketState.liveBroadcasts?.contains(broadcast);

    return Container(
      height: height,
      padding: MSize.pSymmetric(h: 8),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(MSize.r(5)),
        border: Border.all(
          width: MSize.r(1),
          color: isLive == true ? Colors.red : Colors.black38,
        ),
      ),
      child: Text(
        isLive == true ? 'On-Air' : 'Off-Air',
        style: textTheme.labelMedium?.copyWith(
          fontWeight: FontWeight.w600,
          color: isLive == true ? Colors.red : Colors.black38,
          letterSpacing: MSize.fS(1),
        ),
      ),
    );
  }
}
