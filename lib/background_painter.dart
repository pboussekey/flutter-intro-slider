import 'package:flutter/material.dart';

class CustomBackgroundPainter extends CustomPainter {
  Color color;
  CustomBackgroundPainter({this.color});


  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = this.color;
    print(size);
    canvas.drawCircle(Offset(size.width / 2.0, - size.height * 0.1), size.height, paint);
  }

  @override
  bool shouldRepaint(CustomBackgroundPainter oldDelegate) {
    return oldDelegate.color != this.color;
  }
}
