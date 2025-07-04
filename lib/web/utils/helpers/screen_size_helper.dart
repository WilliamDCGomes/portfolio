import 'dart:math' as math;

class ScreenSizeHelper{
  static double w(constraints, double percent) => constraints.maxWidth * percent / 100;
  static double buttonW(constraints, double percent) {
    double width = constraints.maxWidth * percent / 100;

    if(width < 100) {
      return 100;
    }

    return width;
  }
  static double buttonText(constraints, double percent) {
    double width = constraints.maxWidth * percent / 100;

    if(width < 10) {
      return 10;
    }

    return width;
  }
  static double buttonIcon(constraints, double percent) {
    double width = constraints.maxWidth * percent / 100;

    if(width < 12) {
      return 12;
    }

    return width;
  }
  static double myToolsWidth(constraints, double percent) {
    double width = constraints.maxWidth * percent / 100;

    if(width < 500) {
      return 500;
    }

    return width;
  }
  static double myToolsIconWidth(constraints, double percent) {
    double width = constraints.maxWidth * percent / 100;

    if(width < 300) {
      return 300;
    }

    return width;
  }
  static double myToolsIconsShowing(constraints, double percent) {
    double width = constraints.maxWidth * percent / 100;

    if(width < 170) {
      return 1 / 3;
    }
    else if(width < 270) {
      return 1 / 5;
    }
    else if(width < 400) {
      return 1 / 7;
    }
    return 1 / 9;
  }
  static double h(constraints, double percent) => constraints.maxHeight * percent / 100;
  static double fullH(constraints, double percent, double minPx) => math.max(ScreenSizeHelper.h(constraints, percent), minPx);
  static double fullW(constraints, double percent, double minPx) => math.max(ScreenSizeHelper.w(constraints, percent), minPx);
  static double sp(constraints, double size) => size * (constraints.maxWidth / 1000).clamp(0.7, 1.2);
}