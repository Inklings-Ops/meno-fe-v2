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
    var formattedNumber = NumberFormat.compact().format(
      ref.watch(socketDataProvider).numberOfLiveListeners ?? 0,
    );

    return SizedBox(
      width: MSize.w(130),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: MSize.h(28),
            width: MSize.w(80),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                const MAvatar(
                  radius: 14,
                  image: AssetImage('assets/images/move-mountains.jpeg'),
                ),
                Positioned(
                  left: MSize.r(24),
                  child: const MAvatar(
                    radius: 14,
                    image: AssetImage('assets/images/move-mountains.jpeg'),
                  ),
                ),
                Positioned(
                  left: MSize.r(24 * 2),
                  child: const MAvatar(
                    radius: 14,
                    image: AssetImage('assets/images/move-mountains.jpeg'),
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
                style: TextStyle(
                  fontSize: MSize.fS(14),
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
