import 'package:flutter/material.dart';
import 'package:bicycle_shopping_app/core/core.dart';

/// GLOBAL KEY
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

/// THIS MAP IS USE TO CONVERT FONT ENUM TO STRING VALUE
Map fontFamilyDataMap = {
  FontFamily.regular: 'Regular',
  FontFamily.medium: 'Medium',
  FontFamily.semiBold: 'SemiBold',
  FontFamily.bold: 'Bold',
  FontFamily.extraBold: 'ExtraBold',
};
