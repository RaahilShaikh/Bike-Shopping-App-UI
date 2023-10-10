import 'package:bicycle_shopping_app/core/core.dart';

class CommonFunctions {
  static double safeParseDouble(dynamic value) {
    try {
      return double.parse((value as dynamic).toString());
    } on FormatException {
      return 0.0;
    } catch (e) {
      Console.debug(e);
      return 0.0;
    }
  }

  static int safeParseInt(dynamic value) {
    try {
      return int.parse((value as dynamic).toString());
    } catch (e) {
      return 0;
    }
  }

  static num safeParseNum(dynamic value) {
    try {
      return num.parse((value as dynamic).toString());
    } catch (e) {
      return 0;
    }
  }
}