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

  final String? count;
  final String? title;
  final void Function()? onTap;
  final bool loading;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final Size size = MediaQuery.of(context).size;
    final bool isTablet = size.shortestSide >= 600 && size.longestSide >= 960;

    final countStyle = isTablet ? textTheme.displaySmall : textTheme.titleLarge;
    final labelStyle = isTablet ? textTheme.bodyLarge : textTheme.labelLarge;

    if (loading) {
      return const _Skeleton();
    }

    return GestureDetector(
      onTap: onTap,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              '$count',
              style: countStyle?.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                height: MSize.h(1),
              ),
            ),
            Text(
              '$title',
              style: labelStyle?.copyWith(
                height: MSize.h(1),
                color: const Color(0xFF898A8D),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Skeleton extends StatelessWidget {
  const _Skeleton();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final Size size = MediaQuery.of(context).size;
    final bool isTablet = size.shortestSide >= 600 && size.longestSide >= 960;

    final countStyle = isTablet ? textTheme.displaySmall : textTheme.titleLarge;
    final labelStyle = isTablet ? textTheme.bodyLarge : textTheme.labelLarge;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SkeletonLine(
            style: SkeletonLineStyle(
              height: countStyle?.fontSize,
              width: MSize.w(28),
            ),
          ),
          MSize.vS(7),
          SkeletonLine(
            style: SkeletonLineStyle(
              height: labelStyle?.fontSize,
              width: MSize.w(65),
            ),
          )
        ],
      ),
    );
  }
}
