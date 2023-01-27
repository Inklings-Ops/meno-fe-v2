import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';

class MBottomSheetCloseButton extends StatelessWidget {
  const MBottomSheetCloseButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pop(context),
      child: Container(
        height: MSize.r(35),
        width: MSize.r(35),
        alignment: Alignment.center,
        margin: MSize.pSymmetric(h: 16, v: 12),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Theme.of(context).primaryColorLight,
        ),
        child: const Icon(Icons.close),
      ),
    );
  }
}
