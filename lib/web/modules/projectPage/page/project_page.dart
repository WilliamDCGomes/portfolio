import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../widget/project_card_widget.dart';
import '../controller/project_controller.dart';
import '../../../utils/helpers/screen_size_helper.dart';
import '../../../utils/sharedWidgets/button_web_widget.dart';
import '../../../utils/helpers/pass_through_scroll_physics_helper.dart';
import 'package:william_portifolio/web/utils/stylePages/web_colors.dart';
import 'package:william_portifolio/web/utils/sharedWidgets/text_web_widget.dart';

class ProjectPage extends StatefulWidget {
  final bool allowScroll;
  final Object constraints;

  const ProjectPage({
    super.key,
    required this.allowScroll,
    required this.constraints,
  });

  @override
  State<ProjectPage> createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
  late ProjectController _controller;

  @override
  void initState() {
    _controller = Get.put(ProjectController(widget.constraints));
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_){
      _controller.internalAllowScroll.value = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenSizeHelper.fullW(widget.constraints, 100, 550),
      padding: EdgeInsets.only(
        top: ScreenSizeHelper.h(widget.constraints, 8),
        left: ScreenSizeHelper.w(widget.constraints, 5),
        right: ScreenSizeHelper.w(widget.constraints, 5),
      ),
      color: WebColors.thirdBackgroundColor,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              vertical: ScreenSizeHelper.w(widget.constraints, .6),
              horizontal: ScreenSizeHelper.w(widget.constraints, 1),
            ),
            decoration: BoxDecoration(
              color: WebColors.backgroundProjectColor,
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
            textAlign: TextAlign.center,
            textColor: WebColors.textWebColor,
          ),
          SizedBox(height: ScreenSizeHelper.h(widget.constraints, 2)),
          SizedBox(
            height: ScreenSizeHelper.fullH(widget.constraints, 80, 550),
            child: Obx(
              () {
                final allow = _controller.internalAllowScroll.value;
                debugPrint(allow.toString());
                return Stack(
                  children: [
                    ListView.builder(
                      controller: _controller.scrollController,
                      physics: widget.allowScroll && _controller.internalAllowScroll.value
                          ? PassThroughScrollPhysicsHelper() : NeverScrollableScrollPhysics(),
                      itemCount: _controller.projects.length,
                      itemBuilder: (BuildContext context, int index) {
                        var project = _controller.projects[index];

                        return project.title != _controller.projects.last.title ? ProjectCardWidget(
                          even: index % 2 == 0,
                          project: project,
                          constraints: widget.constraints,
                        ) : Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ProjectCardWidget(
                              even: index % 2 == 0,
                              project: project,
                              constraints: widget.constraints,
                            ),
                            SizedBox(height: ScreenSizeHelper.h(widget.constraints, 2)),
                            ButtonWebWidget(
                              constraintType: widget.constraints,
                              backgroundColor: WebColors.blueWebColor,
                              borderColor: WebColors.blueWebColor,
                              padding: EdgeInsets.zero,
                              heightButton: ScreenSizeHelper.buttonH(widget.constraints, 2),
                              widthButton: ScreenSizeHelper.buttonW(widget.constraints, 10),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.add,
                                    color: WebColors.textWebColor,
                                    size: ScreenSizeHelper.buttonIcon(widget.constraints, 1.5),
                                  ),
                                  SizedBox(
                                    width: ScreenSizeHelper.w(widget.constraints, .5),
                                  ),
                                  TextWebWidget(
                                    "Ver Todos",
                                    fontSize: ScreenSizeHelper.buttonText(widget.constraints, 1),
                                    maxLines: 2,
                                    fontWeight: FontWeight.w100,
                                    textAlign: TextAlign.start,
                                    textColor: WebColors.textWebColor,
                                  ),
                                ],
                              ),
                              onPressed: () {

                              },
                            ),
                            SizedBox(height: ScreenSizeHelper.h(widget.constraints, 2)),
                          ],
                        );
                      },
                    ),
                    Visibility(
                      visible: !widget.allowScroll || !_controller.internalAllowScroll.value,
                      child: Container(
                        height: double.maxFinite,
                        width: double.maxFinite,
                        color: WebColors.transparentColor,
                      ),
                    ),
                  ],
                );
              }
            ),
          ),
        ],
      ),
    );
  }
}
