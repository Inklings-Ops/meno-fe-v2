import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';

class MBottomSheetCloseButton extends StatelessWidget {
  const MBottomSheetCloseButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => AutoRouter.of(context).pop(),
      child: Container(
        height: MSize.r(35),
        width: MSize.r(35),
        alignment: Alignment.center,
        margin: MSize.pSymmetric(h: 25, v: 12),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
        ),
        child: Icon(Icons.close, size: MSize.r(20)),
      ),
    );
  }
}
