import 'dart:math';
import 'package:flutter/material.dart';
import 'package:mvp_all/src/style/colors/colors_views.dart';

class ProgressPainter extends CustomPainter {

  ProgressPainter({required this.llenaraBarra});
  double llenaraBarra;

  @override
  void paint(Canvas canvas, Size size) {
    final paint1 = Paint();

    paint1.strokeWidth = 8;
    paint1.color = ColorsSelect.btnTextBo1;
    paint1.style = PaintingStyle.stroke;
    Offset offset1 = Offset(size.width*0.50, size.height*0.50);
    canvas.drawCircle(offset1, min(size.width*0.48, size.height*0.48) , paint1);

    final paint2 = Paint();

    paint2.strokeWidth = 8;
    paint2.color = ColorsSelect.paginatorNext;
    paint2.style = PaintingStyle.stroke;
    Offset offset2 = Offset(size.width*0.50, size.height*0.50);
    // canvas.drawCircle(offset2, min(size.width*0.48, size.height*0.48) , paint2);
    double porcentaje = pi*2*(llenaraBarra/100.0);
    canvas.drawArc(Rect.fromCircle(center: offset2, radius: min(size.width*0.48, size.height*0.48)), -pi/2, porcentaje, false, paint2);
    
  }

  

  @override
  bool shouldRepaint(ProgressPainter oldDelegate) => true;

  // @override
  // bool shouldRebuildSemantics(ProgressPainter oldDelegate) => false;
}