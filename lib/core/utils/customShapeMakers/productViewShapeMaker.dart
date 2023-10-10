import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bicycle_shopping_app/core/core.dart';

class EvenProductViewShapeMaker extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {

    /// this section is use for creating the shape and fill it with the gradient color
    final fillPaintGradient = LinearGradient(
      colors: MyGradientColors.primaryButtonBlackGradient,
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    );

    final fillPaint = Paint();
    fillPaint.shader = fillPaintGradient.createShader(Rect.fromPoints(const Offset(0, 0), Offset(size.width, size.height)));
    fillPaint.style = PaintingStyle.fill;
    fillPaint.blendMode = BlendMode.src;

    double roundnessFactor = (size.height * 0.09).sp;
    double angleFactor = (roundnessFactor * 1.4).sp;

    final fillPath = Path();
    fillPath.moveTo(0,angleFactor + (roundnessFactor * 3));
    fillPath.lineTo(0,size.height + (roundnessFactor * 1.8) - angleFactor);
    fillPath.quadraticBezierTo(0, size.height + (roundnessFactor * 1.55), roundnessFactor, size.height + (roundnessFactor * 1.5));
    fillPath.lineTo(size.width - roundnessFactor, size.height + (roundnessFactor * 1.7)-angleFactor);
    fillPath.quadraticBezierTo(size.width, size.height + (roundnessFactor * 1.8)-(angleFactor + (roundnessFactor * 0.2)), size.width, size.height + (roundnessFactor * 1.8)-(roundnessFactor+angleFactor));
    fillPath.lineTo(size.width,(roundnessFactor * 1.8) + angleFactor);
    fillPath.quadraticBezierTo(size.width, roundnessFactor * 1.8, size.width - roundnessFactor, roundnessFactor * 2);
    fillPath.lineTo(roundnessFactor,(roundnessFactor * 1.8) + angleFactor);
    fillPath.quadraticBezierTo(0, angleFactor+(roundnessFactor * 2), 0, angleFactor+(roundnessFactor * 3));
    fillPath.close();

    /// this section is use for creating the border of shape with the gradient color
    final borderPaintGradient = LinearGradient(
      colors:[
        Colors.white.withOpacity(0.2),
        Colors.black.withOpacity(0.2),
        Colors.black.withOpacity(0.2),
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    );

    final borderPaint = Paint();
    borderPaint.shader = borderPaintGradient.createShader(Rect.fromPoints(const Offset(0, 0), Offset(size.width, size.height)));
    borderPaint.style = PaintingStyle.stroke;
    borderPaint.strokeWidth = 3.sp;
    borderPaint.strokeCap = StrokeCap.butt;
    borderPaint.strokeJoin = StrokeJoin.miter;

    /// this section is use for creating the shadow of shape with the color
    final shadowPaint = Paint();
    shadowPaint.color = const Color(0xff10141C).withOpacity(0.7);
    shadowPaint.maskFilter = MaskFilter.blur(BlurStyle.normal, 10.sp);

    final shadowOffset = Offset(0.sp, 10.sp);
    final shadowPath = fillPath.shift(shadowOffset);

    /// with this we can show the shape on screen
    canvas.drawPath(shadowPath, shadowPaint);
    canvas.drawPath(fillPath, fillPaint);
    canvas.drawPath(fillPath, borderPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class OddProductViewShapeMaker extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {

    /// this section is use for creating the shape and fill it with the gradient color
    final fillPaintGradient = LinearGradient(
      colors: MyGradientColors.primaryButtonBlackGradient,
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    );

    final fillPaint = Paint();
    fillPaint.shader = fillPaintGradient.createShader(Rect.fromPoints(const Offset(0, 0), Offset(size.width, size.height)));
    fillPaint.style = PaintingStyle.fill;

    double roundnessFactor = (size.height * 0.09).sp;
    double angleFactor = (roundnessFactor * 1.4).sp;

    final fillPath = Path();
    fillPath.moveTo(0,angleFactor + roundnessFactor);
    fillPath.lineTo(0,size.height - roundnessFactor);
    fillPath.quadraticBezierTo(0, size.height, roundnessFactor, size.height - (roundnessFactor*0.2));
    fillPath.lineTo(size.width - roundnessFactor,size.height-angleFactor);
    fillPath.quadraticBezierTo(size.width, size.height-(angleFactor + (roundnessFactor * 0.2)), size.width, size.height-(roundnessFactor+angleFactor));
    fillPath.lineTo(size.width,roundnessFactor);
    fillPath.quadraticBezierTo(size.width, 0, size.width - roundnessFactor, (roundnessFactor*0.2));
    fillPath.lineTo(roundnessFactor,angleFactor);
    fillPath.quadraticBezierTo(0, angleFactor+(roundnessFactor * 0.2), 0, angleFactor+roundnessFactor);
    fillPath.close();

    /// this section is use for creating the border of shape with the gradient color
    final borderPaintGradient = LinearGradient(
      colors:[
        Colors.white.withOpacity(0.2),
        Colors.black.withOpacity(0.2),
        Colors.black.withOpacity(0.2),
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    );

    final borderPaint = Paint();
    borderPaint.shader = borderPaintGradient.createShader(Rect.fromPoints(const Offset(0, 0), Offset(size.width, size.height)));
    borderPaint.style = PaintingStyle.stroke;
    borderPaint.strokeWidth = 3.sp;
    borderPaint.strokeCap = StrokeCap.butt;
    borderPaint.strokeJoin = StrokeJoin.miter;

    /// this section is use for creating the shadow of shape with the color
    final shadowPaint = Paint();
    shadowPaint.color = const Color(0xff10141C).withOpacity(0.7);
    shadowPaint.maskFilter = MaskFilter.blur(BlurStyle.normal, 10.sp);

    final shadowOffset = Offset(0, 10.sp);
    final shadowPath = fillPath.shift(shadowOffset);

    /// with this we can show the shape on screen
    canvas.drawPath(shadowPath, shadowPaint);
    canvas.drawPath(fillPath, fillPaint);
    canvas.drawPath(fillPath, borderPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}