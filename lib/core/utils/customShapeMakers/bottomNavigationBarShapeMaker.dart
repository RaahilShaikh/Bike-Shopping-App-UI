import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:bicycle_shopping_app/core/core.dart';

class BottomNavigationBarPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final fillPaintGradient = LinearGradient(
      colors: MyGradientColors.primaryThemeBlackGradient,
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    );

    double height = size.height + MediaQuery.of(navigatorKey.currentContext ?? Get.context!).padding.bottom;

    final fillPaint = Paint();
    fillPaint.shader = fillPaintGradient.createShader(Rect.fromPoints(const Offset(0, 0), Offset(size.width, height)));
    fillPaint.style = PaintingStyle.fill;
    fillPaint.strokeCap = StrokeCap.butt;
    fillPaint.strokeJoin = StrokeJoin.miter;

    final path = Path();
    path.moveTo(0, 25.sp);
    path.lineTo(0, height);
    path.lineTo(size.width, height);
    path.lineTo(size.width, 0);
    path.close();

    final borderPaintGradient = LinearGradient(
      colors: [
        const Color(0xff3f485e),
        MyAppColors. primaryOffBlackColor,
        const Color(0xff181C24),
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    );

    final borderPaint = Paint();
    borderPaint.shader = borderPaintGradient.createShader(Rect.fromPoints(const Offset(0, 0), Offset(size.width, height)));
    borderPaint.style = PaintingStyle.stroke;
    borderPaint.strokeWidth = 5.sp;

    double roundnessFactor = (height * 0.02).sp;
    Path borderPaintPath = Path();
    borderPaintPath.moveTo(0, 25.sp);
    borderPaintPath.lineTo(size.width-roundnessFactor, -2);
    borderPaintPath.quadraticBezierTo(size.width, 0, size.width-1, roundnessFactor);
    borderPaintPath.lineTo(size.width-1, height);

    canvas.drawPath(path, fillPaint);
    canvas.drawPath(borderPaintPath, borderPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class BottomNavigationBarItemPainter extends CustomPainter {

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

    double roundnessFactor = (size.height * 0.1).sp;
    double angleFactor = (roundnessFactor * 2.5).sp;

    final fillPath = Path();
    fillPath.moveTo(0,angleFactor+roundnessFactor);
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
      colors:MyGradientColors.primaryLightBlueGradient,
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
    shadowPaint.color = const Color(0xff10141C).withOpacity(0.7);
    shadowPaint.maskFilter = MaskFilter.blur(BlurStyle.normal, 10.sp);

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