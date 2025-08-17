import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../widget/experience_card_widget.dart';
import '../controller/experience_controller.dart';
import '../../../utils/stylePages/web_colors.dart';
import '../../../utils/helpers/screen_size_helper.dart';
import '../../../utils/sharedWidgets/text_web_widget.dart';
import '../../../utils/sharedWidgets/button_web_widget.dart';
import '../../../utils/helpers/pass_through_scroll_physics_helper.dart';

class ExperiencePage extends StatefulWidget {
  final bool allowScroll;
  final Object constraints;

  const ExperiencePage({
    super.key,
    required this.allowScroll,
    required this.constraints,
  });

  @override
  State<ExperiencePage> createState() => _ExperiencePageState();
}

class _ExperiencePageState extends State<ExperiencePage> {
  late ExperienceController _controller;

  @override
  void initState() {
    _controller = Get.put(ExperienceController());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenSizeHelper.h(widget.constraints, 100),
      width: ScreenSizeHelper.fullW(widget.constraints, 100, 550),
      padding: EdgeInsets.only(
        top: ScreenSizeHelper.h(widget.constraints, 8),
        left: ScreenSizeHelper.w(widget.constraints, 5),
        right: ScreenSizeHelper.w(widget.constraints, 5),
      ),
      color: WebColors.thirdBackgroundColor,
      child: Column(
        children: [
          TextWebWidget(
            "Experiência",
            fontSize: ScreenSizeHelper.sp(widget.constraints, 30),
            fontWeight: FontWeight.w600,
            textColor: WebColors.textWebColor,
          ),
          SizedBox(height: ScreenSizeHelper.h(widget.constraints, 1)),
          TextWebWidget(
            "Um pouco da minha trajetória no mundo da programação",
            maxLines: 3,
            fontSize: ScreenSizeHelper.sp(widget.constraints, 18),
            fontWeight: FontWeight.w100,
            textAlign: TextAlign.center,
            textColor: WebColors.textWebColor,
          ),
          SizedBox(height: ScreenSizeHelper.h(widget.constraints, 2)),
          SizedBox(
            height: ScreenSizeHelper.h(widget.constraints, 70),
            child: Stack(
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  physics: widget.allowScroll ? PassThroughScrollPhysicsHelper() : NeverScrollableScrollPhysics(),
                  itemCount: _controller.experience.length,
                  itemBuilder: (builder, index) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ExperienceCardWidget(
                          constraints: widget.constraints,
                          experience: _controller.experience[index],
                          lastItem: index + 1 == _controller.experience.length,
                        ),
                        index + 1 == _controller.experience.length ? Column(
                          children: [
                            SizedBox(height: ScreenSizeHelper.h(widget.constraints, 4)),
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
                                    "Ver Todas",
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
                        ) : SizedBox(),
                      ],
                    );
                  },
                ),
                Visibility(
                  visible: !widget.allowScroll,
                  child: Container(
                    height: double.maxFinite,
                    width: double.maxFinite,
                    color: WebColors.transparentColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
