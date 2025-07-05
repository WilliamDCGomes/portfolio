import 'package:flutter/widgets.dart';

class PassThroughScrollPhysicsHelper extends ClampingScrollPhysics {
  const PassThroughScrollPhysicsHelper({ super.parent });
  @override
  PassThroughScrollPhysicsHelper applyTo(ScrollPhysics? ancestor) =>
      PassThroughScrollPhysicsHelper(parent: buildParent(ancestor));

  @override
  double applyBoundaryConditions(ScrollMetrics position, double value) {
    final hitTop = value < 0 && position.pixels <= position.minScrollExtent;
    final hitBottom = value > 0 && position.pixels >= position.maxScrollExtent;

    return (hitTop || hitBottom) ? 0.0 : super.applyBoundaryConditions(position, value);
  }
}
