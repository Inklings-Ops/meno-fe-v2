import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meno_fe_v2/modules/broadcast/application/timer/timer_notifier.dart';
import 'package:meno_fe_v2/services/socket/socket_data_notifier.dart';

class BroadcastTimer extends ConsumerWidget {
  const BroadcastTimer({super.key, this.placeholder});

  final String? placeholder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;
    final Size size = MediaQuery.of(context).size;
    final bool isTablet = size.shortestSide >= 600 && size.longestSide >= 960;

    final style = isTablet ? textTheme.displayLarge : textTheme.displaySmall;

    if (placeholder != null) {
      return Text(
        placeholder!,
        style: style,
      );
    }

    final isLive = ref.watch(socketDataProvider).isLive;
    final time = ref.watch(timerProvider).time;

    return Text(
      isLive ? time! : '00:00:00',
      style: style?.copyWith(fontWeight: FontWeight.bold),
    );
  }
}
