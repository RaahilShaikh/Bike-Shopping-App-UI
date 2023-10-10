import 'package:flutter/material.dart';
import 'package:bicycle_shopping_app/core/core.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OfferSectionShapeMaker extends CustomPainter {
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

    double roundnessFactor = (size.height * 0.1).sp;

    final fillPath = Path();
    fillPath.moveTo(0, roundnessFactor);
    fillPath.lineTo(0, size.height - roundnessFactor);
    fillPath.quadraticBezierTo(0, size.height, roundnessFactor, size.height);
    fillPath.lineTo(size.width - roundnessFactor, size.height * 0.82);
    fillPath.quadraticBezierTo(size.width, size.height * 0.8, size.width, (size.height * 0.82) - roundnessFactor);
    fillPath.lineTo(size.width, roundnessFactor);
    fillPath.quadraticBezierTo(size.width, 0, size.width - roundnessFactor, 0);
    fillPath.lineTo(roundnessFactor, 0);
    fillPath.quadraticBezierTo(0, 0, 0, roundnessFactor);
    fillPath.close();

    /// this section is use for creating the border of shape with the gradient color
    final borderPaintGradient = LinearGradient(
      colors: [
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
    borderPaint.strokeWidth = 2.sp;

    /// this section is use for creating the shadow of shape with the color
    final shadowPaintGradient = LinearGradient(
      colors: [
        Colors.black.withOpacity(0.2),
        Colors.black.withOpacity(0.2),
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    );

    final shadowPaint = Paint();
    shadowPaint.color = const Color(0xff10141C).withOpacity(0.7);
    shadowPaint.maskFilter = MaskFilter.blur(BlurStyle.normal, 10.sp);

    final shadowOffset = Offset(0.sp, 5.sp);
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

class TabBarSectionShapeMaker extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    /// this section is use for creating the shape and fill it with the gradient color
    final fillPaintGradient = LinearGradient(
      colors: MyGradientColors.primaryBlackGradient,
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    );

    final fillPaint = Paint();
    fillPaint.shader = fillPaintGradient.createShader(Rect.fromPoints(const Offset(0, 0), Offset(size.width, size.height)));
    fillPaint.style = PaintingStyle.fill;
    fillPaint.blendMode = BlendMode.src;

    final fillPath = Path();
    fillPath.moveTo(0, 0);
    fillPath.lineTo(0, size.height);
    fillPath.lineTo(size.width, size.height * 0.1);
    fillPath.lineTo(size.width, -(size.height * 0.9));
    fillPath.close();

    canvas.drawPath(fillPath, fillPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
