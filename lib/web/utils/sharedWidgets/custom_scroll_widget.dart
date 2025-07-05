import 'package:flutter/material.dart';

class CustomScrollWidget extends ScrollBehavior {
  @override
  Widget buildScrollbar(BuildContext context, Widget child, ScrollableDetails details) => child;
}