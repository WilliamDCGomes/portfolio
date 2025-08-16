import 'package:flutter/material.dart';
import '../../../utils/sharedWidgets/custom_scroll_widget.dart';

class BodyChildrenWidget extends StatefulWidget {
  final Object constraints;
  final List<Widget> childrenWidget;

  const BodyChildrenWidget({
    super.key,
    required this.constraints,
    required this.childrenWidget,
  });

  @override
  State<BodyChildrenWidget> createState() => _BodyChildrenWidgetState();
}

class _BodyChildrenWidgetState extends State<BodyChildrenWidget> {
  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: CustomScrollWidget(),
      child: SingleChildScrollView(
        primary: true,
        child: Column(
          children: widget.childrenWidget,
        ),
      ),
    );
  }
}
