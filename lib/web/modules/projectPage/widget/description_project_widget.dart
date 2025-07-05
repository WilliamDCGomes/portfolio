import 'package:flutter/material.dart';
import '../../../utils/stylePages/web_colors.dart';
import '../../../utils/helpers/screen_size_helper.dart';
import '../../../utils/sharedWidgets/text_web_widget.dart';

class DescriptionProjectWidget extends StatefulWidget {
  final String title;
  final String description;
  final Object constraints;
  final List<String> toolsList;

  const DescriptionProjectWidget({
    super.key,
    required this.title,
    required this.description,
    required this.constraints,
    required this.toolsList,
  });

  @override
  State<DescriptionProjectWidget> createState() => _DescriptionProjectWidgetState();
}

class _DescriptionProjectWidgetState extends State<DescriptionProjectWidget> {
  List<Chip> _createList() {
    List<Chip> chips = <Chip>[];

    for(String tool in widget.toolsList) {
      chips.add(
        Chip(
          label: TextWebWidget(
            tool,
            fontSize: ScreenSizeHelper.sp(widget.constraints, 12),
          ),
          backgroundColor: WebColors.backgroundProjectColor,
          padding: EdgeInsets.zero,
        ),
      );
    }

    return chips;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenSizeHelper.w(widget.constraints, 32),
      padding: EdgeInsets.all(ScreenSizeHelper.w(widget.constraints, 2)),
      color: WebColors.secondBackgroundProjectColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextWebWidget(
            widget.title,
            maxLines: 1,
            fontSize: ScreenSizeHelper.sp(widget.constraints, 15),
            fontWeight: FontWeight.w600,
            textAlign: TextAlign.start,
            textColor: WebColors.textWebColor,
          ),
          SizedBox(height: ScreenSizeHelper.w(widget.constraints, 1.5)),
          SizedBox(
            height: ScreenSizeHelper.w(widget.constraints, 22),
            child: ListView(
              shrinkWrap: true,
              children: [
                TextWebWidget(
                  widget.description,
                  maxLines: 20,
                  fontSize: ScreenSizeHelper.sp(widget.constraints, 14),
                  fontWeight: FontWeight.w100,
                  textAlign: TextAlign.start,
                  textColor: WebColors.textWebColor,
                ),
                SizedBox(height: ScreenSizeHelper.w(widget.constraints, 1.5)),
                Wrap(
                  spacing: ScreenSizeHelper.w(widget.constraints, 1),
                  runSpacing: ScreenSizeHelper.w(widget.constraints, 1),
                  children: _createList(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
