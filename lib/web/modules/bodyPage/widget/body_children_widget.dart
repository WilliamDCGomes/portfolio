import 'package:flutter/material.dart';
import '../../../utils/helpers/screen_size_helper.dart';
import '../../../utils/sharedWidgets/custom_scroll_widget.dart';

class BodyChildrenWidget extends StatefulWidget {
  final List<Widget> childrenWidget;

  const BodyChildrenWidget({
    super.key,
    required this.childrenWidget,
  });

  @override
  State<BodyChildrenWidget> createState() => _BodyChildrenWidgetState();
}

class _BodyChildrenWidgetState extends State<BodyChildrenWidget> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return SizedBox(
            height: ScreenSizeHelper.h(constraints, 90),
            child: ScrollConfiguration(
              behavior: CustomScrollWidget(),
              child: ListView(
                shrinkWrap: true,
                children: widget.childrenWidget,
              ),
            ),
          );
        }
      ),
    );
  }
}
