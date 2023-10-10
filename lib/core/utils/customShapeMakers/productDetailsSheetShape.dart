import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bicycle_shopping_app/core/core.dart';

class ProductDetailsSheetShape extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {

    /// this section is use for creating the shape and fill it with the gradient color
    const fillPaintGradient = LinearGradient(
      colors:[Color(0xff353f53), Color(0xff212734)],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    );

    final fillPaint = Paint();
    fillPaint.shader = fillPaintGradient.createShader(Rect.fromPoints(const Offset(0, 0), Offset(size.width, size.height)));
    fillPaint.style = PaintingStyle.fill;

    double roundnessFactor = 40.sp;

    final fillPath = Path();
    fillPath.moveTo(0,roundnessFactor);
    fillPath.lineTo(0,size.height);
    fillPath.lineTo(size.width,size.height);
    fillPath.lineTo(size.width,roundnessFactor);
    fillPath.quadraticBezierTo(size.width, 0, size.width - roundnessFactor, 0);
    fillPath.lineTo(roundnessFactor,0);
    fillPath.quadraticBezierTo(0, 0, 0, roundnessFactor);

    /// this section is use for creating the border of shape with the gradient color
    final borderPaintGradient = LinearGradient(
      colors:[
        Colors.white.withOpacity(0.1),
        Colors.black.withOpacity(0),
        Colors.black.withOpacity(0),
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
    shadowPaint.maskFilter = MaskFilter.blur(BlurStyle.normal, 30.sp);

    final shadowOffset = Offset(0.sp, 0.sp);
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

class ProductPriceShape extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {

    /// this section is use for creating the shape and fill it with the color
    final fillPaint = Paint();
    fillPaint.style = PaintingStyle.fill;
    fillPaint.color = const Color(0xff262E3D);

    double roundnessFactor = 55.sp;

    final fillPath = Path();
    fillPath.moveTo(0,roundnessFactor);
    fillPath.quadraticBezierTo(0, size.height, roundnessFactor, size.height);
    fillPath.lineTo(size.width - roundnessFactor,size.height);
    fillPath.quadraticBezierTo(size.width, size.height, size.width, roundnessFactor);
    fillPath.quadraticBezierTo(size.width, 0, size.width - roundnessFactor, 0);
    fillPath.lineTo(roundnessFactor,0);
    fillPath.quadraticBezierTo(0, 0, 0, roundnessFactor);
    fillPath.close();

    /// this section is use for creating the border of shape with the gradient color
    final borderPaintGradient = LinearGradient(
      colors:[
        Colors.white.withOpacity(0.1),
        Colors.black.withOpacity(0.1),
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    );

    final borderPaint = Paint();
    borderPaint.shader = borderPaintGradient.createShader(Rect.fromPoints(const Offset(0, 0), Offset(size.width, size.height)));
    borderPaint.style = PaintingStyle.stroke;
    borderPaint.strokeWidth = 3.sp;
    borderPaint.strokeCap = StrokeCap.butt;
    borderPaint.strokeJoin = StrokeJoin.miter;

    /// this section is use for creating the shadow of shape with the color
    final shadowPaint = Paint();
    shadowPaint.color = const Color(0xff10141C).withOpacity(0.2);
    shadowPaint.maskFilter = MaskFilter.blur(BlurStyle.normal, 10.sp);

    final shadowOffset = Offset(0.sp, 0.sp);
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

class AddToCardButtonShape extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {

    /// this section is use for creating the shape and fill it with the gradient color
    final fillPaintGradient = LinearGradient(
      colors: MyGradientColors.primaryBlueGradient,
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    );

    final fillPaint = Paint();
    fillPaint.shader = fillPaintGradient.createShader(Rect.fromPoints(const Offset(0, 0), Offset(size.width, size.height)));
    fillPaint.style = PaintingStyle.fill;
    fillPaint.blendMode = BlendMode.srcIn;
    fillPaint.strokeWidth = size.width;
    fillPaint.strokeCap = StrokeCap.butt;
    fillPaint.strokeJoin = StrokeJoin.miter;

    double roundnessFactor = 10.sp;

    final fillPath = Path();
    fillPath.moveTo(0,roundnessFactor);
    fillPath.lineTo(0,size.height - roundnessFactor);
    fillPath.quadraticBezierTo(0, size.height, roundnessFactor, size.height);
    fillPath.lineTo(size.width - roundnessFactor,size.height);
    fillPath.quadraticBezierTo(size.width, size.height, size.width, size.height - roundnessFactor);
    fillPath.lineTo(size.width,roundnessFactor);
    fillPath.quadraticBezierTo(size.width, 0, size.width - roundnessFactor, 0);
    fillPath.lineTo(roundnessFactor,0);
    fillPath.quadraticBezierTo(0, 0, 0, roundnessFactor);
    fillPath.close();

    /// this section is use for creating the border of shape with the gradient color
    final borderPaintGradient = LinearGradient(
      colors: MyGradientColors.primaryLightBlueGradient,
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    );

    final borderPaint = Paint();
    borderPaint.shader = borderPaintGradient.createShader(Rect.fromPoints(const Offset(0, 0), Offset(size.width, size.height)));
    borderPaint.style = PaintingStyle.stroke;
    borderPaint.blendMode = BlendMode.srcIn;
    borderPaint.strokeWidth = 3.sp;
    borderPaint.strokeCap = StrokeCap.butt;
    borderPaint.strokeJoin = StrokeJoin.miter;


    /// this section is use for creating the shadow of shape with the color
    final shadowPaint = Paint();
    shadowPaint.color = const Color(0xff10141C).withOpacity(0.4);
    shadowPaint.maskFilter = MaskFilter.blur(BlurStyle.normal, 30.sp);

    final shadowOffset = Offset(0, 5.sp);
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