import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/modules/broadcast/application/timer/timer_notifier.dart';

class BroadcastTimer extends ConsumerWidget {
  const BroadcastTimer({super.key, this.placeholderTimer});
  final String? placeholderTimer;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final timer = ref.watch(timerProvider);

    return Text(
      placeholderTimer ?? timer.time!,
      style: TextStyle(
        fontSize: MSize.fS(40),
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
