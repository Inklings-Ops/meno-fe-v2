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
    return Container(
      margin: addSideMargin ? MSize.pSymmetric(h: 16.0) : null,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              if (showBorder) ...[
                if (loading)
                  SkeletonLine(
                    style: SkeletonLineStyle(
                      height: MSize.fS(20),
                      width: MSize.r(4),
                    ),
                  )
                else
                  Container(
                    height: MSize.fS(20),
                    width: MSize.r(4),
                    color: MColors.danger,
                  ),
                MSize.hS(6),
              ],
              Container(
                alignment: Alignment.centerLeft,
                height: showBorder ? MSize.r(27) : null,
                child: loading
                    ? SkeletonLine(
                        style: SkeletonLineStyle(
                          height: MSize.fS(20),
                          width: MSize.w(170),
                        ),
                      )
                    : Text(
                        title!,
                        style: TextStyle(
                          fontSize: fontSize ?? MSize.fS(20),
                          height: MSize.r(1),
                          fontWeight: FontWeight.bold,
                          color: textColor,
                        ),
                      ),
              ),
            ],
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
                style: TextStyle(
                  fontSize: MSize.fS(14),
                  fontWeight: FontWeight.w500,
                  color: Colors.black54,
                ),
              ),
            ),
          if (showAvatar && avatar != null) ...[avatar!]
        ],
      ),
    );
  }
}
