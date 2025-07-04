import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../controller/project_controller.dart';
import '../../../utils/helpers/screen_size_helper.dart';
import 'package:william_portifolio/web/utils/stylePages/web_colors.dart';
import 'package:william_portifolio/web/utils/sharedWidgets/text_web_widget.dart';

class ProjectPage extends StatefulWidget {
  final Object constraints;

  const ProjectPage({
    super.key,
    required this.constraints,
  });

  @override
  State<ProjectPage> createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
  late ProjectController _controller;

  @override
  void initState() {
    _controller = Get.put(ProjectController());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenSizeHelper.fullH(widget.constraints, 100, 550),
      width: ScreenSizeHelper.fullW(widget.constraints, 100, 550),
      color: WebColors.thirdBackgroundColor,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(ScreenSizeHelper.w(widget.constraints, 1)),
            decoration: BoxDecoration(
              color: WebColors.backgroundProjectTagColor,
              borderRadius: BorderRadius.all(Radius.circular(ScreenSizeHelper.w(widget.constraints, 1))),
            ),
            child: TextWebWidget(
              "Projetos",
              fontSize: ScreenSizeHelper.sp(widget.constraints, 15),
              textColor: WebColors.textWebColor,
            ),
          ),
          SizedBox(height: ScreenSizeHelper.h(widget.constraints, 1)),
          TextWebWidget(
            "Confira o meu portifólio com os projetos que foram desenvolvidos.",
            maxLines: 3,
            fontSize: ScreenSizeHelper.sp(widget.constraints, 18),
            fontWeight: FontWeight.w100,
            textAlign: TextAlign.start,
            textColor: WebColors.textWebColor,
          ),
        ],
      ),
    );
  }
}
