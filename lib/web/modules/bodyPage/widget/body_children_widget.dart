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
          return Container(
            height: ScreenSizeHelper.h(constraints, 96),
            padding: EdgeInsets.only(top: ScreenSizeHelper.h(constraints, 4)),
            child: ScrollConfiguration(
              behavior: CustomScrollWidget(),
              child: SingleChildScrollView(
                primary: true,
                child: Column(
                  children: widget.childrenWidget,
                ),
              ),
            ),
          );
        }
      ),
    );
  }
}
