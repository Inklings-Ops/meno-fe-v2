import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';

class SplashPageBackgroundPainter extends CustomPainter {
  SplashPageBackgroundPainter({this.color = const Color(0xff360090)});
  Color color;

  @override
  void paint(Canvas canvas, Size size) {
    var path1 = Path();
    var path2 = Path();
    var path3 = Path();
    var path4 = Path();
    var path5 = Path();
    var path6 = Path();

    Offset center = Offset(size.width / 2, size.height / 2);

    Paint paint1 = Paint()..color = const Color(0x6628134A);
    Paint paint2 = Paint()..color = const Color(0x4928134A);
    Paint paint3 = Paint()..color = const Color(0x3328134A);
    Paint paint4 = Paint()..color = const Color(0x3328134A);
    Paint paint5 = Paint()..color = const Color(0x2528134A);
    Paint paint6 = Paint()..color = const Color(0x2528134A);

    path6.addOval(Rect.fromCircle(center: center, radius: MSize.r(395)));
    canvas.drawPath(path6, paint6);

    path5.addOval(Rect.fromCircle(center: center, radius: MSize.r(322)));
    canvas.drawPath(path5, paint5);

    path4.addOval(Rect.fromCircle(center: center, radius: MSize.r(259)));
    canvas.drawPath(path4, paint4);

    path3.addOval(Rect.fromCircle(center: center, radius: MSize.r(196)));
    canvas.drawPath(path3, paint3);

    path2.addOval(Rect.fromCircle(center: center, radius: MSize.r(155)));
    canvas.drawPath(path2, paint2);

    path1.addOval(Rect.fromCircle(center: center, radius: MSize.r(112)));
    canvas.drawShadow(path1, Colors.black, 30.0, true);
    canvas.drawPath(path1, paint1);
  }

  @override
  bool shouldRepaint(SplashPageBackgroundPainter oldDelegate) {
    return color != oldDelegate.color;
  }
}
