import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';

class MBottomSheetTile extends StatelessWidget {
  const MBottomSheetTile({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });

  final IconData icon;
  final String title;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: MSize.h(55),
        padding: MSize.pSymmetric(h: 17),
        child: Row(
          children: [
            CircleAvatar(
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
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: MSize.fS(16),
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ),
    );
  }
}
