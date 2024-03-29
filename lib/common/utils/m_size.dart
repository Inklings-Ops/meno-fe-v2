import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MSize {
  MSize._();

  /// Font size
  static fS(num value) => value.sp;

  /// R value
  /// Can be used for fontSizes and setting radius values
  static r(num value) => value.r;

  /// Vertical Spacing
  static vS(num height) => ScreenUtil().setVerticalSpacing(height);

  /// Horizontal Spacing
  static hS(num width) => ScreenUtil().setHorizontalSpacing(width);

  /// Height
  static h(num height) => ScreenUtil().setHeight(height);

  /// Width
  static w(num width) => ScreenUtil().setWidth(width);

  /// Screen height
  static sh(num value) => ScreenUtil().screenHeight * value;

  /// Screen width
  static sw(num value) => ScreenUtil().screenWidth * value;

  /// Padding all
  static pAll(double value) => EdgeInsets.all(value).r;

  /// Padding fromLTRB (left, top, right, back)
  static pFromLTRB(double left, double top, double right, double bottom) =>
      EdgeInsets.fromLTRB(left, top, right, bottom).r;

  /// Padding symmetric
  static pSymmetric({double h = 0.0, double v = 0.0}) =>
      EdgeInsets.symmetric(horizontal: h, vertical: v).r;

  /// Padding only
  static pOnly({
    double l = 0.0,
    double t = 0.0,
    double r = 0.0,
    double b = 0.0,
  }) =>
      EdgeInsets.only(left: l, top: t, right: r, bottom: b).r;
}
