import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/constants/m_icons.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';

class MNotificationIcon extends StatelessWidget {
  const MNotificationIcon({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return IconButton(
      onPressed: () {},
      splashColor: Colors.white,
      tooltip: 'Notification Icon',
      icon: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          const Icon(MIcons.Notification1, color: Colors.black),
          Positioned(
            top: MSize.r(-6),
            right: MSize.r(-1),
            child: Container(
              height: MSize.r(16),
              width: MSize.r(16),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: colorScheme.error,
              ),
              child: Text(
                '4',
                style: TextStyle(
                  color: colorScheme.onError,
                  fontSize: MSize.fS(9),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
