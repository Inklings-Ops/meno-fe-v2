import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/common/widgets/m_avatar.dart';
import 'package:meno_fe_v2/services/socket/socket_data_notifier.dart';

class ListenersList extends ConsumerWidget {
  const ListenersList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;

    var formattedNumber = NumberFormat.compact().format(
      ref.watch(socketDataProvider).numberOfLiveListeners ?? 0,
    );

    final listeners = ref.read(socketDataProvider).listeners;

    return SizedBox(
      width: MSize.w(130),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: MSize.h(28),
            width: MSize.w(24 * (listeners?.length ?? 0)),
            child: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.centerLeft,
              children: [
                for (var i = 0; i < (listeners?.length ?? 0) && i < 6; i++)
                  Positioned(
                    left: MSize.r(24 * i),
                    child: MAvatar(
                      radius: 14,
                      image: listeners![i]?.imageUrl != null
                          ? NetworkImage(listeners[i]!.imageUrl!)
                          : null,
                    ),
                  ),
              ],
            ),
          ),
          const Spacer(),
          Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.hearing,
                size: MSize.r(14),
                color: Colors.white,
              ),
              MSize.hS(2),
              Text(
                formattedNumber,
                style: textTheme.titleLarge?.copyWith(color: Colors.white),
              ),
            ],
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
