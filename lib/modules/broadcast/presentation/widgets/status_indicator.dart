import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/modules/broadcast/domain/entities/broadcast_status.dart';

class StatusIndicator extends StatefulWidget {
  const StatusIndicator({super.key, this.status, this.height});
  final String? status;
  final double? height;

  @override
  State<StatusIndicator> createState() => _StatusIndicatorState();
}

class _StatusIndicatorState extends State<StatusIndicator> {
  BroadcastStatus broadcastStatus = BroadcastStatus.offAir;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height ?? MSize.h(16),
      padding: MSize.pSymmetric(h: 8),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(MSize.r(5)),
        border: Border.all(width: MSize.r(1), color: statusColor()),
      ),
      child: Text(
        statusText().toUpperCase(),
        style: TextStyle(
          fontSize: MSize.fS(11),
          fontWeight: FontWeight.w600,
          color: statusColor(),
          letterSpacing: MSize.fS(1),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    switch (widget.status) {
      case 'active':
        setState(() => broadcastStatus = BroadcastStatus.live);
        break;
      case 'inactive':
        setState(() => broadcastStatus = BroadcastStatus.offAir);
        break;
      default:
        setState(() => broadcastStatus = BroadcastStatus.offAir);
        break;
    }
  }

  Color statusColor() {
    switch (broadcastStatus) {
      case BroadcastStatus.offAir:
        return Colors.black38;
      case BroadcastStatus.reconnecting:
        return Colors.orange;
      default:
        return Colors.red;
    }
  }

  String statusText() {
    switch (broadcastStatus) {
      case BroadcastStatus.onAir:
        return 'On-Air';
      case BroadcastStatus.offAir:
        return 'Off-Air';
      default:
        return broadcastStatus.name;
    }
  }
}
