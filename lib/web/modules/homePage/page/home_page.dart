import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../controller/home_controller.dart';
import '../../../../enums/social_media_enum.dart';
import '../widget/scrolling_indicator_widget.dart';
import '../../../utils/stylePages/web_colors.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../../../utils/helpers/web_paths_helper.dart';
import '../../../utils/helpers/screen_size_helper.dart';
import '../../../../generated/l10n/app_localization.dart';
import '../../../utils/sharedWidgets/text_web_widget.dart';
import '../../../utils/sharedWidgets/dev_tools_widget.dart';
import '../../../utils/sharedWidgets/button_web_widget.dart';
import '../../../../utils/sharedWidgets/social_media_button_widget.dart';

class HomePage extends StatefulWidget {
  final Object constraints;
  
  const HomePage({
    super.key,
    required this.constraints,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late HomeController _controller;

  @override
  void initState() {
    _controller = Get.put(HomeController());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: ScreenSizeHelper.fullH(widget.constraints, 100, 550),
          child: Stack(
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: ScreenSizeHelper.w(widget.constraints, 10)),
                  child: SizedBox(
                    width: ScreenSizeHelper.w(widget.constraints, 65),
                    child: ListView(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        SizedBox(height: ScreenSizeHelper.h(widget.constraints, 3)),
                        TextWebWidget(
                          AppLocalizations.of(context)!.homePage_FirstIntroduction,
                          fontSize: ScreenSizeHelper.sp(widget.constraints, 50),
                          maxLines: 4,
                          fontWeight: FontWeight.bold,
                          textColor: WebColors.textWebColor,
                        ),
                        SizedBox(height: ScreenSizeHelper.h(widget.constraints, 1)),
                        TextWebWidget(
                          AppLocalizations.of(context)!.homePage_SecondIntroduction,
                          fontSize: ScreenSizeHelper.sp(widget.constraints, 30),
                          maxLines: 4,
                          fontWeight: FontWeight.normal,
                          textColor: WebColors.textWebColor,
                        ),
                        SizedBox(height: ScreenSizeHelper.h(widget.constraints, 3)),
                        SizedBox(
                          width: ScreenSizeHelper.w(widget.constraints, 60),
                          child: TextWebWidget(
                            AppLocalizations.of(context)!.homePage_ThirdIntroduction,
                            fontSize: ScreenSizeHelper.sp(widget.constraints, 25),
                            maxLines: 8,
                            fontWeight: FontWeight.normal,
                            textColor: WebColors.textWebColor,
                          ),
                        ),
                        SizedBox(height: ScreenSizeHelper.h(widget.constraints, 6)),
                        Center(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SocialMediaButtonWidget(
                                constraintType: widget.constraints,
                                imagePath: WebPathsHelper.instagramIcon,
                                onTap: () => _controller.openSocialMedia(SocialMediaEnum.instagram),
                              ),
                              SizedBox(width: ScreenSizeHelper.w(widget.constraints, 2)),
                              SocialMediaButtonWidget(
                                constraintType: widget.constraints,
                                imagePath: WebPathsHelper.youtubeIcon,
                                onTap: () => _controller.openSocialMedia(SocialMediaEnum.youtube),
                              ),
                              SizedBox(width: ScreenSizeHelper.w(widget.constraints, 2)),
                              SocialMediaButtonWidget(
                                constraintType: widget.constraints,
                                imagePath: WebPathsHelper.tiktokIcon,
                                onTap: () => _controller.openSocialMedia(SocialMediaEnum.tiktok),
                              ),
                              SizedBox(width: ScreenSizeHelper.w(widget.constraints, 2)),
                              SocialMediaButtonWidget(
                                constraintType: widget.constraints,
                                imagePath: WebPathsHelper.linkedinIcon,
                                onTap: () => _controller.openSocialMedia(SocialMediaEnum.linkedin),
                              ),
                              SizedBox(width: ScreenSizeHelper.w(widget.constraints, 2)),
                              SocialMediaButtonWidget(
                                constraintType: widget.constraints,
                                imagePath: WebPathsHelper.githubIcon,
                                onTap: () => _controller.openSocialMedia(SocialMediaEnum.github),
                              ),
                              SizedBox(width: ScreenSizeHelper.w(widget.constraints, 2)),
                              SocialMediaButtonWidget(
                                constraintType: widget.constraints,
                                imagePath: WebPathsHelper.gmailIcon,
                                onTap: () => _controller.openSocialMedia(SocialMediaEnum.gmail),
                              ),
                            ],
                          ),
                        ),
                        ScrollingIndicatorWidget(
                          constraints: widget.constraints,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          color: WebColors.thirdBackgroundColor,
          height: ScreenSizeHelper.h(widget.constraints, 90),
          child: Stack(
            children: [
              Column(
                spacing: 0,
                children: [
                  Container(
                    color: WebColors.secondBackgroundColor,
                    height: ScreenSizeHelper.h(widget.constraints, 45),
                  ),
                  Container(
                    color: WebColors.thirdBackgroundColor,
                    height: ScreenSizeHelper.h(widget.constraints, 45),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: ScreenSizeHelper.h(widget.constraints, 3),
                  bottom: ScreenSizeHelper.h(widget.constraints, 1),
                  left: ScreenSizeHelper.w(widget.constraints, 5),
                  right: ScreenSizeHelper.w(widget.constraints, 5),
                ),
                child: SizedBox(
                  width: ScreenSizeHelper.w(widget.constraints, 40),
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      TextWebWidget(
                        AppLocalizations.of(context)!.homePage_SecondPart_FirstIntroduction,
                        fontSize: ScreenSizeHelper.sp(widget.constraints, 30),
                        maxLines: 2,
                        fontWeight: FontWeight.normal,
                        textAlign: TextAlign.start,
                        textColor: WebColors.blueWebColor,
                      ),
                      SizedBox(height: ScreenSizeHelper.h(widget.constraints, 2)),
                      TextWebWidget(
                        AppLocalizations.of(context)!.homePage_SecondPart_SecondIntroduction,
                        fontSize: ScreenSizeHelper.sp(widget.constraints, 20),
                        maxLines: 4,
                        fontWeight: FontWeight.normal,
                        textAlign: TextAlign.start,
                        textColor: WebColors.textWebColor,
                      ),
                      SizedBox(height: ScreenSizeHelper.h(widget.constraints, 2)),
                      TextWebWidget(
                        AppLocalizations.of(context)!.homePage_SecondPart_ThirdIntroduction,
                        fontSize: ScreenSizeHelper.sp(widget.constraints, 18),
                        maxLines: 12,
                        fontWeight: FontWeight.w100,
                        textAlign: TextAlign.start,
                        textColor: WebColors.textWebColor,
                      ),
                      SizedBox(height: ScreenSizeHelper.h(widget.constraints, 2)),
                      TextWebWidget(
                        AppLocalizations.of(context)!.homePage_SecondPart_FourthIntroduction,
                        fontSize: ScreenSizeHelper.sp(widget.constraints, 18),
                        maxLines: 4,
                        fontWeight: FontWeight.w100,
                        textAlign: TextAlign.start,
                        textColor: WebColors.textWebColor,
                      ),
                      SizedBox(height: ScreenSizeHelper.h(widget.constraints, 3)),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: ButtonWebWidget(
                          constraintType: widget.constraints,
                          backgroundColor: WebColors.blueWebColor,
                          borderColor: WebColors.blueWebColor,
                          padding: EdgeInsets.symmetric(vertical: ScreenSizeHelper.w(widget.constraints, .5)),
                          heightButton: ScreenSizeHelper.buttonResumeH(widget.constraints, 4),
                          widthButton: ScreenSizeHelper.buttonW(widget.constraints, 10),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset(
                                WebPathsHelper.resumeIcon,
                                height: ScreenSizeHelper.buttonIcon(widget.constraints, 1.5),
                              ),
                              SizedBox(
                                width: ScreenSizeHelper.w(widget.constraints, .5),
                              ),
                              TextWebWidget(
                                AppLocalizations.of(context)!.homePage_Resume,
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
                      ),
                      SizedBox(height: ScreenSizeHelper.h(widget.constraints, 4)),
                      TextWebWidget(
                        AppLocalizations.of(context)!.homePage_MyTools,
                        maxLines: 3,
                        fontSize: ScreenSizeHelper.sp(widget.constraints, 18),
                        fontWeight: FontWeight.w100,
                        textAlign: TextAlign.start,
                        textColor: WebColors.textWebColor,
                      ),
                      SizedBox(height: ScreenSizeHelper.h(widget.constraints, 2)),
                      SizedBox(
                        width: ScreenSizeHelper.myToolsWidth(widget.constraints, 50),
                        child: CarouselSlider.builder(
                          carouselController: _controller.carouselController,
                          itemCount: _controller.chatGptContentList.length,
                          options: CarouselOptions(
                            viewportFraction: ScreenSizeHelper.myToolsIconsShowing(widget.constraints, 22),
                            height: ScreenSizeHelper.myToolsIconWidth(widget.constraints, 22),
                            enlargeStrategy: CenterPageEnlargeStrategy.height,
                            autoPlay: true,
                            enableInfiniteScroll: true,
                            autoPlayInterval: const Duration(seconds: 2),
                            autoPlayAnimationDuration: const Duration(milliseconds: 800),
                          ),
                          itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
                            return DevToolsWidget(
                              toolName: _controller.chatGptContentList[itemIndex].toolName,
                              toolImagePath: _controller.chatGptContentList[itemIndex].toolImagePath,
                              constraintType: widget.constraints,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: ScreenSizeHelper.w(widget.constraints, 40),
                  padding: EdgeInsets.symmetric(
                    vertical: ScreenSizeHelper.w(widget.constraints, 3),
                    horizontal: ScreenSizeHelper.w(widget.constraints, 5),
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          color: WebColors.blueWebColor,
                          height: ScreenSizeHelper.w(widget.constraints, 25),
                          width: ScreenSizeHelper.w(widget.constraints, 18.75),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          margin: EdgeInsets.only(
                            top: ScreenSizeHelper.w(widget.constraints, 1),
                            right: ScreenSizeHelper.w(widget.constraints, 1),
                          ),
                          child: Image.asset(
                            WebPathsHelper.imageProfile,
                            height: ScreenSizeHelper.w(widget.constraints, 25),
                            width: ScreenSizeHelper.w(widget.constraints, 18.75),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
