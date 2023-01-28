import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/common/widgets/bottom_sheets/m_bottom_sheet_close_button.dart';

class MBottomSheetContainer extends StatelessWidget {
  const MBottomSheetContainer({super.key, this.child});
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: [
        const Align(
          alignment: Alignment.centerRight,
          child: MBottomSheetCloseButton(),
        ),
        Container(
          margin: MSize.pFromLTRB(25, 0, 25, 25),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(MSize.r(16)),
          ),
          child: child,
        ),
      ],
    );
  }
}
