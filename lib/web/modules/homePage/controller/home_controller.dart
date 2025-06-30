import 'package:get/get.dart';
import '../../../base/models/dev_tools.dart';
import 'package:universal_html/html.dart' as html;
import '../../../../enums/social_media_enum.dart';
import '../../../utils/helpers/web_paths_helper.dart';
import 'package:carousel_slider/carousel_controller.dart';

class HomeController extends GetxController {
  late List<ChatGptContent> chatGptContentList;
  late CarouselSliderController carouselController;

  HomeController(){
    carouselController = CarouselSliderController();
    chatGptContentList = <ChatGptContent>[
      ChatGptContent(
        toolName: "Flutter",
        toolImagePath: WebPathsHelper.flutterIcon,
      ),
      ChatGptContent(
        toolName: "Dart",
        toolImagePath: WebPathsHelper.dartIcon,
      ),
      ChatGptContent(
        toolName: "Xamarin Forms",
        toolImagePath: WebPathsHelper.xamarinFormsIcon,
      ),
      ChatGptContent(
        toolName: "MAUI",
        toolImagePath: WebPathsHelper.mauiIcon,
      ),
      ChatGptContent(
        toolName: "C#",
        toolImagePath: WebPathsHelper.cSharpIcon,
      ),
      ChatGptContent(
        toolName: ".NET",
        toolImagePath: WebPathsHelper.dotNetIcon,
      ),
      ChatGptContent(
        toolName: "Swift",
        toolImagePath: WebPathsHelper.swiftIcon,
      ),
      ChatGptContent(
        toolName: "HTML",
        toolImagePath: WebPathsHelper.htmlIcon,
      ),
      ChatGptContent(
        toolName: "CSS",
        toolImagePath: WebPathsHelper.cssIcon,
      ),
      ChatGptContent(
        toolName: "Java Script",
        toolImagePath: WebPathsHelper.jsIcon,
      ),
      ChatGptContent(
        toolName: "Type Script",
        toolImagePath: WebPathsHelper.tsIcon,
      ),
      ChatGptContent(
        toolName: "Angular",
        toolImagePath: WebPathsHelper.angularIcon,
      ),
      ChatGptContent(
        toolName: "SQL Server",
        toolImagePath: WebPathsHelper.sqlServerIcon,
      ),
      ChatGptContent(
        toolName: "SQLite",
        toolImagePath: WebPathsHelper.sqliteIcon,
      ),
      ChatGptContent(
        toolName: "PostgreSQL",
        toolImagePath: WebPathsHelper.postgresqlIcon,
      ),
      ChatGptContent(
        toolName: "MySQL",
        toolImagePath: WebPathsHelper.mysqlIcon,
      ),
      ChatGptContent(
        toolName: "Azure Cloud",
        toolImagePath: WebPathsHelper.azureIcon,
      ),
      ChatGptContent(
        toolName: "AWS Cloud",
        toolImagePath: WebPathsHelper.awsIcon,
      ),
      ChatGptContent(
        toolName: "Firebase",
        toolImagePath: WebPathsHelper.firebaseIcon,
      ),
      ChatGptContent(
        toolName: "Power Automate",
        toolImagePath: WebPathsHelper.powerAutomateIcon,
      ),
    ];
  }

  void openSocialMedia(SocialMediaEnum socialMediaEnum) {
    switch (socialMediaEnum) {
      case SocialMediaEnum.instagram:
        html.window.open("https://www.instagram.com/william_douglas_dev/","_blank");
        break;
      case SocialMediaEnum.youtube:
        html.window.open("https://www.youtube.com/@WilliamDouglasDev","_blank");
        break;
      case SocialMediaEnum.tiktok:
        html.window.open("https://www.tiktok.com/@william_douglas_dev","_blank");
        break;
      case SocialMediaEnum.linkedin:
        html.window.open("https://www.linkedin.com/in/william-douglas-dev/","_blank");
        break;
      case SocialMediaEnum.github:
        html.window.open("https://github.com/WilliamDCGomes","_blank");
        break;
      case SocialMediaEnum.gmail:
        html.window.open("mailto:canalwilliamdouglasdev@gmail.com","_blank");
        break;
    }
  }
}