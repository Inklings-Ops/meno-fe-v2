import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';

class MButton extends StatelessWidget {
  const MButton({
    Key? key,
    required this.title,
    required this.onPressed,
    this.fixedSize,
    this.color,
    this.titleColor,
    this.elevation = 0,
    this.fontSize,
    this.fontWeight,
    this.disabled = false,
    this.loading = false,
    this.filled = true,
    this.padding,
    this.borderRadius,
  }) : super(key: key);

  final void Function() onPressed;
  final Size? fixedSize;
  final Color? color;
  final String title;
  final Color? titleColor;
  final double? elevation;
  final double? fontSize;
  final FontWeight? fontWeight;
  final bool disabled;
  final bool loading;
  final bool filled;
  final EdgeInsetsGeometry? padding;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ElevatedButton(
          onPressed: disabled ? null : onPressed,
          style: ElevatedButton.styleFrom(
            elevation: 0,
            fixedSize: fixedSize,
            padding: EdgeInsets.zero,
            backgroundColor: filled ? color : Colors.transparent,
            shape: borderRadius != null
                ? RoundedRectangleBorder(borderRadius: borderRadius!)
                : null,
          ),
          child: loading
              ? null
              : _Title(
                  title: title,
                  titleColor: titleColor,
                  fontSize: fontSize,
                  fontWeight: fontWeight,
                ),
        ),
        if (loading)
          SizedBox.fromSize(
            size: Size(MSize.sw(1), MSize.h(53)),
            child: Lottie.asset(
              'assets/animations/loading-indicator.json',
              animate: true,
              fit: BoxFit.fill,
            ),
          )
        else
          const SizedBox(),
      ],
    );
  }
}

class _Title extends StatelessWidget {
  const _Title({
    Key? key,
    required this.title,
    required this.titleColor,
    required this.fontSize,
    required this.fontWeight,
  }) : super(key: key);

  final String title;
  final Color? titleColor;
  final double? fontSize;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final Size size = MediaQuery.of(context).size;
    final bool isTablet = size.shortestSide >= 600 && size.longestSide >= 960;
    final style = isTablet ? textTheme.titleLarge : textTheme.titleMedium;

    return Text(
      title,
      style: style?.copyWith(
        color: titleColor ?? Theme.of(context).colorScheme.onPrimary,
        fontSize: fontSize,
        fontWeight: fontWeight ?? FontWeight.w600,
      ),
    );
  }
}
