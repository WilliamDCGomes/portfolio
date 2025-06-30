import 'dart:math' as math;

class ScreenSizeHelper{
  static double w(constraints, double percent) => constraints.maxWidth * percent / 100;
  static double h(constraints, double percent) => constraints.maxHeight * percent / 100;
  static double fullH(constraints, double percent, double minPx) => math.max(ScreenSizeHelper.h(constraints, percent), minPx);
  static double sp(constraints, double size) => size * (constraints.maxWidth / 1000).clamp(0.7, 1.2);
}