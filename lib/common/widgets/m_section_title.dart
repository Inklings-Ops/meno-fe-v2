import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/constants/m_colors.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:skeletons/skeletons.dart';

class MSectionTitle extends StatelessWidget {
  final String? title;
  final Color? textColor;
  final bool showSeeAllButton;
  final void Function()? seeAllAction;
  final bool addSideMargin;
  final double? fontSize;
  final bool showBorder;
  final bool showAvatar;
  final Widget? avatar;
  final bool loading;

  const MSectionTitle({
    Key? key,
    this.title,
    this.textColor,
    this.showSeeAllButton = true,
    this.seeAllAction,
    this.addSideMargin = false,
    this.fontSize,
    this.showBorder = true,
    this.showAvatar = false,
    this.avatar,
    this.loading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    if (loading) {
      return Container(
        alignment: Alignment.centerLeft,
        margin: addSideMargin ? MSize.pSymmetric(h: 18.0) : null,
        constraints: BoxConstraints(minHeight: MSize.fS(20)),
        child: Row(
          children: [
            SkeletonLine(
              style: SkeletonLineStyle(
                height: MSize.h(20),
                width: MSize.w(4),
              ),
            ),
            MSize.hS(6),
            SkeletonLine(
              style: SkeletonLineStyle(
                height: MSize.h(20),
                width: MSize.sw(0.5),
              ),
            ),
          ],
        ),
      );
    }

    return Container(
      margin: addSideMargin ? MSize.pSymmetric(h: 16.0) : null,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            alignment: Alignment.centerLeft,
            constraints: BoxConstraints(
              minHeight: textTheme.titleMedium!.fontSize!,
            ),
            decoration: BoxDecoration(
              border: !showBorder
                  ? null
                  : Border(
                      left: BorderSide(
                        color: MColors.danger,
                        width: MSize.r(4),
                      ),
                    ),
            ),
            padding: MSize.pOnly(l: 6),
            child: AutoSizeText(
              title!,
              minFontSize: 16,
              maxFontSize: 22,
              style: textTheme.titleMedium?.copyWith(
                height: MSize.r(1),
                fontWeight: FontWeight.bold,
                color: textColor,
              ),
            ),
          ),
          if (!showSeeAllButton)
            const SizedBox()
          else if (loading)
            SkeletonLine(
              style: SkeletonLineStyle(
                height: MSize.fS(14),
                width: MSize.w(40),
              ),
            )
          else
            GestureDetector(
              onTap: seeAllAction,
              child: Text(
                'See All',
                style: textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w500,
                  color: Colors.black54,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
