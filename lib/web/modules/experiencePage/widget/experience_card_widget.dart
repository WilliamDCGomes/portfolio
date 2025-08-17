import 'package:flutter/material.dart';
import '../../../base/models/experience.dart';
import '../../../utils/stylePages/web_colors.dart';
import '../../../utils/helpers/screen_size_helper.dart';
import '../../../../utils/helpers/date_format_helper.dart';
import '../../../utils/sharedWidgets/text_web_widget.dart';

class ExperienceCardWidget extends StatelessWidget {
  final bool lastItem;
  final Experience experience;
  final Object constraints;

  const ExperienceCardWidget({
    super.key,
    required this.lastItem,
    required this.experience,
    required this.constraints,
  });

  List<Chip> createList(List<String> toolsList, Object constraints) {
    List<Chip> chips = <Chip>[];

    for(String tool in toolsList) {
      chips.add(
        Chip(
          label: TextWebWidget(
            tool,
            fontSize: ScreenSizeHelper.sp(constraints, 12),
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
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.all(ScreenSizeHelper.w(constraints, 2)),
          decoration: BoxDecoration(
            color: WebColors.secondBackgroundProjectColor,
            borderRadius: BorderRadius.all(
              Radius.circular(ScreenSizeHelper.h(constraints, 3)),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    experience.companyLogo,
                    height: ScreenSizeHelper.h(constraints, 4),
                    width: ScreenSizeHelper.h(constraints, 4),
                  ),
                  SizedBox(width: ScreenSizeHelper.w(constraints, 1),),
                  TextWebWidget(
                    experience.company,
                    maxLines: 1,
                    fontSize: ScreenSizeHelper.sp(constraints, 15),
                    fontWeight: FontWeight.w600,
                    textAlign: TextAlign.start,
                    textColor: WebColors.textWebColor,
                  ),
                  Expanded(child: Container()),
                  TextWebWidget(
                    experience.period,
                    maxLines: 1,
                    fontSize: ScreenSizeHelper.sp(constraints, 14),
                    fontWeight: FontWeight.w200,
                    textAlign: TextAlign.start,
                    textColor: WebColors.textWebColor,
                  ),
                ],
              ),
              SizedBox(
                height: ScreenSizeHelper.h(constraints, 2),
              ),
              Row(
                children: [
                  TextWebWidget(
                    experience.title,
                    maxLines: 1,
                    fontSize: ScreenSizeHelper.sp(constraints, 15),
                    fontWeight: FontWeight.w600,
                    textAlign: TextAlign.start,
                    textColor: WebColors.textWebColor,
                  ),
                  Expanded(child: Container()),
                  experience.observation != null &&
                      experience.observation!.isNotEmpty ?
                  TextWebWidget(
                    experience.observation!,
                    fontSize: ScreenSizeHelper.sp(constraints, 14),
                    fontWeight: FontWeight.w200,
                    maxLines: 3,
                    textAlign: TextAlign.end,
                    textColor: WebColors.textWebColor,
                  ) : SizedBox(),
                ],
              ),
              SizedBox(
                height: ScreenSizeHelper.h(constraints, 1),
              ),
              TextWebWidget(
                DateFormatHelper.formatDateToPeriod(
                  experience.startPeriod,
                  experience.endPeriod,
                ),
                maxLines: 1,
                fontSize: ScreenSizeHelper.sp(constraints, 14),
                fontWeight: FontWeight.w200,
                textAlign: TextAlign.start,
                textColor: WebColors.textWebColor,
              ),
              SizedBox(
                height: ScreenSizeHelper.h(constraints, 2),
              ),
              TextWebWidget(
                "Responsabilidade:",
                fontSize: ScreenSizeHelper.sp(constraints, 14),
                fontWeight: FontWeight.w200,
                textAlign: TextAlign.start,
                textColor: WebColors.textWebColor,
              ),
              SizedBox(
                height: ScreenSizeHelper.h(constraints, 1),
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: experience.responsibilities.length,
                  itemBuilder: (builder, internalIndex) {
                    return Padding(
                      padding: EdgeInsets.only(
                        left: ScreenSizeHelper.w(constraints, 2),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.circle,
                            size: ScreenSizeHelper.sp(constraints, 8),
                            color: WebColors.textWebColor,
                          ),
                          SizedBox(
                            width: ScreenSizeHelper.w(constraints, 1),
                          ),
                          TextWebWidget(
                            experience.responsibilities[internalIndex],
                            maxLines: 2,
                            fontSize: ScreenSizeHelper.sp(constraints, 14),
                            fontWeight: FontWeight.w200,
                            textAlign: TextAlign.start,
                            textOverflow: TextOverflow.ellipsis,
                            textColor: WebColors.textWebColor,
                          ),
                        ],
                      ),
                    );
                  }
              ),
              SizedBox(
                height: ScreenSizeHelper.h(constraints, 2),
              ),
              TextWebWidget(
                "Ferramentas:",
                fontSize: ScreenSizeHelper.sp(constraints, 14),
                fontWeight: FontWeight.w200,
                textAlign: TextAlign.start,
                textColor: WebColors.textWebColor,
              ),
              SizedBox(
                height: ScreenSizeHelper.h(constraints, 1),
              ),
              Wrap(
                spacing: ScreenSizeHelper.w(constraints, 1),
                runSpacing: ScreenSizeHelper.w(constraints, 1),
                children: createList(
                  experience.toolsList,
                  constraints,
                ),
              ),
            ],
          ),
        ),
        lastItem ? SizedBox() :
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              color: WebColors.backgroundProjectColor,
              height: ScreenSizeHelper.h(constraints, 2),
              width: ScreenSizeHelper.w(constraints, .3),
              margin: EdgeInsets.only(bottom: ScreenSizeHelper.h(constraints, 1)),
            ),
            Container(
              color: WebColors.backgroundProjectColor,
              height: ScreenSizeHelper.h(constraints, 4),
              width: ScreenSizeHelper.w(constraints, .3),
            ),
            Icon(
              Icons.history,
              color: WebColors.backgroundProjectColor,
              size: ScreenSizeHelper.h(constraints, 4),
            ),
            Container(
              color: WebColors.backgroundProjectColor,
              height: ScreenSizeHelper.h(constraints, 4),
              width: ScreenSizeHelper.w(constraints, .3),
              margin: EdgeInsets.only(bottom: ScreenSizeHelper.h(constraints, 1)),
            ),
            Container(
              color: WebColors.backgroundProjectColor,
              height: ScreenSizeHelper.h(constraints, 2),
              width: ScreenSizeHelper.w(constraints, .3),
            ),
          ],
        ),
      ],
    );
  }
}
