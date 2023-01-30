import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/common/widgets/m_button.dart';
import 'package:meno_fe_v2/modules/broadcast/application/broadcast/broadcast_notifier.dart';
import 'package:meno_fe_v2/modules/broadcast/domain/entities/broadcast.dart';

class BroadcastDetailsActionButtons extends ConsumerWidget {
  const BroadcastDetailsActionButtons({super.key, required this.broadcast});
  final Broadcast broadcast;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final broadcastEvent = ref.watch(broadcastProvider.notifier);

    ref.listen<BroadcastState>(broadcastProvider, (previous, next) {
      next.joinedOption.fold(
        () => null,
        (either) => either.fold(
          (l) => ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(l.maybeMap(
                orElse: () => '',
                message: (value) => value.message,
                serverError: (_) => 'Server error',
              )),
            ),
          ),
          (r) {
            ScaffoldMessenger.of(context).clearSnackBars();
            // AutoRouter.of(context).push(StreamRoute(broadcast: broadcast));
          },
        ),
      );
    });

    return SizedBox(
      height: MSize.h(30),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: MButton(
              title: 'Join',
              fontSize: MSize.fS(12),
              borderRadius: BorderRadius.circular(MSize.r(5)),
              padding: EdgeInsets.zero,
              onPressed: () => broadcastEvent.joinPressed(
                broadcast: broadcast,
                context: context,
              ),
            ),
          ),
          MSize.hS(8),
          Expanded(
            child: OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(MSize.r(5)),
                ),
              ),
              child: Text(
                'Share',
                style: TextStyle(fontSize: MSize.fS(12)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
