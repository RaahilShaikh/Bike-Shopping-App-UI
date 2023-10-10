import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bicycle_shopping_app/core/core.dart';

class CustomBGScaffoldShape extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint

    final fillPaintBGGradient = LinearGradient(
      colors: MyGradientColors.primaryBGBlackGradient,
      begin: Alignment.topLeft,
      end: Alignment.bottomLeft,
    );

    final fillBGPaint = Paint();
    fillBGPaint.shader = fillPaintBGGradient.createShader(Rect.fromPoints(const Offset(0, 0), Offset(size.width, size.height)));
    fillBGPaint.style = PaintingStyle.fill;
    fillBGPaint.strokeWidth = size.width;
    fillBGPaint.strokeCap = StrokeCap.butt;
    fillBGPaint.strokeJoin = StrokeJoin.miter;

    final pathBGFill = Path();
    pathBGFill.lineTo(0, size.height + 26.sp);
    pathBGFill.lineTo(size.width, size.height);
    pathBGFill.lineTo(size.width, 0);
    pathBGFill.close();

    final fillPaintShapeGradient = LinearGradient(
      colors: MyGradientColors.primaryLightBlueGradient,
      begin: Alignment.topLeft,
      end: Alignment.bottomLeft,
    );

    final fillShapePaint = Paint();
    fillShapePaint.shader = fillPaintShapeGradient.createShader(Rect.fromPoints(const Offset(0, 0), Offset(size.width, size.height)));
    fillShapePaint.style = PaintingStyle.fill;
    fillShapePaint.strokeWidth = size.width;
    fillShapePaint.strokeCap = StrokeCap.butt;
    fillShapePaint.strokeJoin = StrokeJoin.miter;

    final pathShapeFill = Path();
    pathShapeFill.moveTo(size.width * 0.1, size.height + 24.sp);
    pathShapeFill.lineTo(size.width * 0.1, size.height + 24.sp);
    pathShapeFill.lineTo(size.width, size.height);
    pathShapeFill.lineTo(size.width, size.height * 0.35);
    pathShapeFill.lineTo(size.width * 0.75, size.height * 0.25);
    pathShapeFill.close();

    canvas.drawPath(pathBGFill, fillBGPaint);
    canvas.drawPath(pathShapeFill, fillShapePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}

class CustomProductDetailsBGShape extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint

    final fillPaintBGGradient = LinearGradient(
      colors: MyGradientColors.primaryBGBlackGradient,
      begin: Alignment.topLeft,
      end: Alignment.bottomLeft,
    );

    final fillBGPaint = Paint();
    fillBGPaint.shader = fillPaintBGGradient.createShader(Rect.fromPoints(const Offset(0, 0), Offset(size.width, size.height)));
    fillBGPaint.style = PaintingStyle.fill;
    fillBGPaint.strokeWidth = size.width;
    fillBGPaint.strokeCap = StrokeCap.butt;
    fillBGPaint.strokeJoin = StrokeJoin.miter;

    final pathBGFill = Path();
    pathBGFill.lineTo(0, size.height + 26.sp);
    pathBGFill.lineTo(size.width, size.height);
    pathBGFill.lineTo(size.width, 0);
    pathBGFill.close();

    final fillPaintShapeGradient = LinearGradient(
      colors: MyGradientColors.primaryLightBlueGradient,
      begin: Alignment.topLeft,
      end: Alignment.bottomLeft,
    );

    final fillShapePaint = Paint();
    fillShapePaint.shader = fillPaintShapeGradient.createShader(Rect.fromPoints(const Offset(0, 0), Offset(size.width, size.height)));
    fillShapePaint.style = PaintingStyle.fill;
    fillShapePaint.strokeWidth = size.width;
    fillShapePaint.strokeCap = StrokeCap.butt;
    fillShapePaint.strokeJoin = StrokeJoin.miter;

    final pathShapeFill = Path();
    pathShapeFill.moveTo(size.width * 0.1, size.height + 24.sp);
    pathShapeFill.lineTo(size.width * 0.1, size.height + 24.sp);
    pathShapeFill.lineTo(size.width, size.height);
    pathShapeFill.lineTo(size.width, 0);
    pathShapeFill.lineTo(size.width * 0.8, 1);
    pathShapeFill.close();

    canvas.drawPath(pathBGFill, fillBGPaint);
    canvas.drawPath(pathShapeFill, fillShapePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}