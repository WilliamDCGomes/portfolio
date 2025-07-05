import 'package:flutter/widgets.dart';

class PassThroughScrollPhysicsHelper extends ClampingScrollPhysics {
  const PassThroughScrollPhysicsHelper({ super.parent });

  @override
  PassThroughScrollPhysicsHelper applyTo(ScrollPhysics? ancestor) =>
      PassThroughScrollPhysicsHelper(parent: buildParent(ancestor));

  @override
  double applyBoundaryConditions(ScrollMetrics position, double value) {
    assert(position.minScrollExtent <= position.maxScrollExtent);

    if (value < position.pixels && position.pixels <= position.minScrollExtent) {
      return value - position.pixels;
    }

    if (value > position.pixels && position.pixels >= position.maxScrollExtent) {
      return value - position.pixels;
    }

    if (value < position.minScrollExtent && position.pixels > position.minScrollExtent) {
      return value - position.minScrollExtent;
    }

    if (value > position.maxScrollExtent && position.pixels < position.maxScrollExtent) {
      return value - position.maxScrollExtent;
    }

    return 0.0;
  }
}