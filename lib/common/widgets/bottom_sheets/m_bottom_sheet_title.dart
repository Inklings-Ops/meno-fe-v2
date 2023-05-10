import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';

class MBottomSheetTile extends StatelessWidget {
  const MBottomSheetTile({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
    this.borderRadius,
  });

  final IconData icon;
  final String title;
  final void Function() onTap;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: MSize.h(56),
        width: MSize.sw(1),
        padding: MSize.pSymmetric(h: 17),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: borderRadius,
        ),
        child: Row(
          children: [
            CircleAvatar(
              radius: MSize.r(17),
              backgroundColor: Theme.of(context).primaryColorLight,
              child: Icon(
                icon,
                color: Theme.of(context).primaryColor,
                size: MSize.r(20),
              ),
            ),
            MSize.hS(25),
            Text(
              title,
              style: textTheme.bodyLarge?.copyWith(
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ),
    );
  }
}
