import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/constants/m_colors.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';

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
      alignment: Alignment.centerLeft,
      margin: addSideMargin ? MSize.pSymmetric(h: 16.0) : null,
      constraints: BoxConstraints(minHeight: MSize.fS(20)),
      decoration: BoxDecoration(
        border: Border(
          left: BorderSide(
            color: MColors.danger,
            width: MSize.r(4),
          ),
        ),
      ),
      padding: MSize.pOnly(l: 6),
      child: AutoSizeText(
        title!,
        minFontSize: 19,
        maxFontSize: 22,
        style: TextStyle(
          height: MSize.r(1),
          fontWeight: FontWeight.bold,
          color: textColor,
        ),
      ),
    );
  }
}
