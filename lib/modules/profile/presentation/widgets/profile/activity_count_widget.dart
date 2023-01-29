import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:skeletons/skeletons.dart';

class ActivityCountWidget extends StatelessWidget {
  const ActivityCountWidget({
    super.key,
    this.count,
    this.title,
    this.onTap,
    this.loading = false,
  });

  final double? count;
  final String? title;
  final void Function()? onTap;
  final bool loading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (loading)
              SkeletonLine(
                style: SkeletonLineStyle(
                  height: MSize.fS(26),
                  width: MSize.w(28),
                ),
              )
            else
              Text(
                count!.round().toString(),
                style: TextStyle(
                  color: Colors.black,
                  fontSize: MSize.fS(22),
                  fontWeight: FontWeight.w600,
                  height: MSize.r(1),
                ),
              ),
            if (loading) ...[
              SkeletonLine(
                style: SkeletonLineStyle(
                  height: MSize.fS(12),
                  width: MSize.w(65),
                ),
              )
            ] else ...[
              MSize.vS(7),
              Text(
                '$title',
                style: TextStyle(
                  fontSize: MSize.fS(12),
                  color: const Color(0xFF898A8D),
                ),
              ),
            ]
          ],
        ),
      ),
    );
  }
}
