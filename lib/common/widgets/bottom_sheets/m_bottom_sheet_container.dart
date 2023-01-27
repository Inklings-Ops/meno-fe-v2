import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';

class MBottomSheetContainer extends StatelessWidget {
  const MBottomSheetContainer({super.key, this.child});
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: GestureDetector(
            onTap: () => context.router.pop(),
            child: Container(
              margin: MSize.pSymmetric(h: 25, v: 10),
              height: MSize.r(35),
              width: MSize.r(35),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColorLight,
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.close),
            ),
          ),
        ),
        Container(
          margin: MSize.pFromLTRB(25, 0, 25, 25),
          padding: MSize.pSymmetric(v: 13),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(MSize.r(10)),
          ),
          child: child,
        ),
      ],
    );
  }
}
