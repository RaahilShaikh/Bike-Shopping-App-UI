import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:bicycle_shopping_app/core/core.dart';
import 'package:bicycle_shopping_app/screens/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(413,720),
      builder: (context,child){
        return GetMaterialApp(
          navigatorKey: navigatorKey,
          title: 'Online Bike Shopping App',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: MyAppColors.primaryBlackColor),
            useMaterial3: true,
          ),
          home: const BottomNavigationBarUI(),
        );
      },
    );
  }
}
