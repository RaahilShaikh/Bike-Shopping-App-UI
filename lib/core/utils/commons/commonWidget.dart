import 'package:flutter/material.dart';
import 'package:bicycle_shopping_app/core/core.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomText extends StatelessWidget {
  final String text;
  final FontWeight fontWeight;
  final TextOverflow textOverflow;
  final double? fontSize;
  final Color? color;
  final FontFamily? style;
  final TextAlign textAlign;
  final TextDecoration textDecoration;
  final int? maxLine;

  const CustomText(
      {super.key, required this.text, this.fontWeight = FontWeight.w500, this.fontSize, this.color, this.style, this.textOverflow = TextOverflow.visible, this.textAlign = TextAlign.start, this.textDecoration = TextDecoration.none, this.maxLine});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        overflow: textOverflow,
        fontWeight: fontWeight,
        fontSize: fontSize ?? 16.sp,
        color: color ?? Colors.white,
        fontFamily: fontFamilyDataMap[style ?? FontFamily.regular],
        decoration: textDecoration,
      ),
      maxLines: maxLine,
    );
  }
}

class GradientText extends StatelessWidget {
  final String text;
  final LinearGradient gradient;
  final FontWeight fontWeight;
  final TextOverflow textOverflow;
  final double? fontSize;
  final FontFamily? style;
  final TextAlign textAlign;
  final TextDecoration textDecoration;
  final int? maxLine;


  const GradientText({super.key,
    required this.text,
    required this.gradient,
    this.fontWeight = FontWeight.w500, this.fontSize, this.style, this.textOverflow = TextOverflow.visible, this.textAlign = TextAlign.start, this.textDecoration = TextDecoration.none, this.maxLine
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect bounds) {
        return gradient.createShader(bounds);
      },
      child: Text(
        text,
        textAlign: textAlign,
        style: TextStyle(
          overflow: textOverflow,
          fontWeight: fontWeight,
          fontSize: fontSize ?? 16.sp,
          color: Colors.white,
          fontFamily: fontFamilyDataMap[style ?? FontFamily.regular],
          decoration: textDecoration,
        ),
        maxLines: maxLine,
      ),
    );
  }
}