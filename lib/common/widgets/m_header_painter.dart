import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';

class MHeaderPainter extends CustomPainter {
  MHeaderPainter({this.color = Colors.grey});

  Color color;

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill
      ..strokeWidth = MSize.r(8);
    Paint paint2 = Paint()
      ..color = color
      ..style = PaintingStyle.fill
      ..strokeWidth = MSize.r(8);
    Paint paint3 = Paint()
      ..color = const Color.fromRGBO(101, 59, 223, 0.4)
      ..style = PaintingStyle.fill
      ..strokeWidth = MSize.r(8);

    canvas.drawCircle(
      Offset(MSize.sw(0.84), MSize.sh(-0.03)),
      MSize.r(172),
      paint3,
    );
    canvas.drawCircle(
      Offset(MSize.sw(0.8), MSize.sh(-0.06)),
      MSize.r(172),
      paint2,
    );
    canvas.drawCircle(
      Offset(MSize.sw(0.2), MSize.sh(0.03)),
      MSize.r(172),
      paint,
    );
  }

  @override
  bool shouldRepaint(MHeaderPainter oldDelegate) {
    return color != oldDelegate.color;
  }
}
