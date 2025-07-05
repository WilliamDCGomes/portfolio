import 'package:flutter/material.dart';
import '../../../utils/stylePages/web_colors.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../../../utils/helpers/web_paths_helper.dart';
import '../../../utils/helpers/screen_size_helper.dart';
import '../../../utils/sharedWidgets/text_web_widget.dart';

class ImageProjectWidget extends StatefulWidget {
  final Object constraints;
  final List<String> imagesPath;
  final CarouselSliderController androidCarouselController = CarouselSliderController();
  final CarouselSliderController iosCarouselController = CarouselSliderController();

  ImageProjectWidget({
    super.key,
    required this.imagesPath,
    required this.constraints,
  });

  @override
  State<ImageProjectWidget> createState() => _ImageProjectWidgetState();
}

class _ImageProjectWidgetState extends State<ImageProjectWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenSizeHelper.w(widget.constraints, 32),
      padding: EdgeInsets.all(ScreenSizeHelper.w(widget.constraints, .5)),
      color: WebColors.backgroundProjectColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: ScreenSizeHelper.w(widget.constraints, 24.5),
                child: Stack(
                  children: [
                    Center(
                      child: Container(
                        margin: EdgeInsets.only(left: ScreenSizeHelper.w(widget.constraints, .01)),
                        height: ScreenSizeHelper.w(widget.constraints, 24),
                        width: ScreenSizeHelper.w(widget.constraints, 12),
                        child: CarouselSlider.builder(
                          carouselController: widget.androidCarouselController,
                          itemCount: widget.imagesPath.length,
                          options: CarouselOptions(
                            viewportFraction: 1,
                            autoPlay: true,
                            enableInfiniteScroll: true,
                            autoPlayInterval: const Duration(seconds: 2),
                            autoPlayAnimationDuration: const Duration(milliseconds: 800),
                          ),
                          itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
                            return Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    widget.imagesPath[itemIndex],
                                  ),
                                  fit: BoxFit.contain,
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(ScreenSizeHelper.w(widget.constraints, 2))),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    Center(
                      child: Image.asset(
                        WebPathsHelper.samsungScreen,
                        height: ScreenSizeHelper.w(widget.constraints, 24),
                        width: ScreenSizeHelper.w(widget.constraints, 12),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          color: WebColors.backgroundProjectColor,
                          height: ScreenSizeHelper.w(widget.constraints, 24),
                          width: ScreenSizeHelper.w(widget.constraints, .4),
                        ),
                        SizedBox(
                          width: ScreenSizeHelper.w(widget.constraints, 11.4),
                        ),
                        Container(
                          color: WebColors.backgroundProjectColor,
                          height: ScreenSizeHelper.w(widget.constraints, 24),
                          width: ScreenSizeHelper.w(widget.constraints, .5),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(width: ScreenSizeHelper.w(widget.constraints, .6)),
              TextWebWidget(
                "Android",
                fontSize: ScreenSizeHelper.sp(widget.constraints, 12),
                fontWeight: FontWeight.w100,
                textAlign: TextAlign.center,
                textColor: WebColors.textWebColor,
              ),
            ],
          ),
          SizedBox(width: ScreenSizeHelper.w(widget.constraints, 5)),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(left: ScreenSizeHelper.w(widget.constraints, .01)),
                      height: ScreenSizeHelper.w(widget.constraints, 24),
                      width: ScreenSizeHelper.w(widget.constraints, 12),
                      child: CarouselSlider.builder(
                        carouselController: widget.iosCarouselController,
                        itemCount: widget.imagesPath.length,
                        options: CarouselOptions(
                          viewportFraction: 1,
                          autoPlay: true,
                          enableInfiniteScroll: true,
                          autoPlayInterval: const Duration(seconds: 2),
                          autoPlayAnimationDuration: const Duration(milliseconds: 800),
                        ),
                        itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
                          return Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  widget.imagesPath[itemIndex],
                                ),
                                fit: BoxFit.contain,
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(ScreenSizeHelper.w(widget.constraints, 2))),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Image.asset(
                    WebPathsHelper.iPhoneScreen,
                    height: ScreenSizeHelper.w(widget.constraints, 24.5),
                    width: ScreenSizeHelper.w(widget.constraints, 12),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: ScreenSizeHelper.w(widget.constraints, .5)),
                    child: Row(
                      children: [
                        Container(
                          color: WebColors.backgroundProjectColor,
                          height: ScreenSizeHelper.w(widget.constraints, 24),
                          width: ScreenSizeHelper.w(widget.constraints, .4),
                        ),
                        SizedBox(
                          width: ScreenSizeHelper.w(widget.constraints, 11.5),
                        ),
                        Container(
                          color: WebColors.backgroundProjectColor,
                          height: ScreenSizeHelper.w(widget.constraints, 24),
                          width: ScreenSizeHelper.w(widget.constraints, .5),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(width: ScreenSizeHelper.w(widget.constraints, .6)),
              TextWebWidget(
                "IOS",
                fontSize: ScreenSizeHelper.sp(widget.constraints, 12),
                fontWeight: FontWeight.w100,
                textAlign: TextAlign.center,
                textColor: WebColors.textWebColor,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
