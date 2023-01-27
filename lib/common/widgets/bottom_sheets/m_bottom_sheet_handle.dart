import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';

class MBottomSheetHandle extends StatelessWidget {
  const MBottomSheetHandle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MSize.h(3),
      width: MSize.w(48),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(MSize.r(10)),
        color: const Color(0xFFD2D2D2),
      ),
    );
  }
}
