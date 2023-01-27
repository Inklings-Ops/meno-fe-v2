import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';

class MTextButton extends StatelessWidget {
  const MTextButton({
    Key? key,
    required this.title,
    this.onPressed,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.size,
    this.padding,
    this.alignment,
  }) : super(key: key);

  final String title;
  final void Function()? onPressed;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Size? size;
  final EdgeInsetsGeometry? padding;
  final Alignment? alignment;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: padding ?? EdgeInsets.zero,
        alignment: alignment ?? Alignment.center,
        fixedSize: size,
        minimumSize: Size(MSize.w(0), MSize.h(0)),
      ),
      child: Text(
        title,
        style: TextStyle(
          color: color ?? Theme.of(context).primaryColor,
          fontSize: fontSize ?? MSize.fS(14),
          fontWeight: fontWeight ?? FontWeight.w500,
        ),
      ),
    );
  }
}
