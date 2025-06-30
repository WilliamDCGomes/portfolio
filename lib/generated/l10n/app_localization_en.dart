// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localization.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get language => 'english';

  @override
  String get initialPageMainMessage =>
      'You pressed the button this amount of times:';

  @override
  String get appCloseHelper_Warning => 'Warning';

  @override
  String get appCloseHelper_TnformationText => 'Press again to exit';

  @override
  String get informationPopup_ButtonOk => 'OK';

  @override
  String get textFieldValidatorsHelper_RequiredField => 'Required field';

  @override
  String get textFieldValidatorsHelper_FirstMinimumNumberValidation =>
      'Please provide the';

  @override
  String get textFieldValidatorsHelper_SecondMinimumNumberValidation =>
      'is invalid';

  @override
  String get textFieldValidatorsHelper_FirstEmailValidation =>
      'Please provide the email';

  @override
  String get textFieldValidatorsHelper_SecondEmailValidation => 'Invalid email';

  @override
  String get flavors_Title => 'Portfolio';

  @override
  String get headerPage_TabHome => 'Home';

  @override
  String get headerPage_TabExperience => 'Experience';

  @override
  String get headerPage_TabProject => 'Projects';

  @override
  String get headerPage_TabEducation => 'Education';

  @override
  String get homePage_FirstIntroduction => 'Hello! My name is William Douglas';

  @override
  String get homePage_SecondIntroduction =>
      'Full Stack Developer and Technology Enthusiast';

  @override
  String get homePage_ThirdIntroduction =>
      'I’m a developer passionate about technology and innovation. Here you can learn more about me, my work, and my projects.';

  @override
  String get homePage_Scroll => 'Scroll';

  @override
  String get homePage_SecondPart_FirstIntroduction => 'Get to Know Me';

  @override
  String get homePage_SecondPart_SecondIntroduction =>
      'Feel free to explore more about my work!';

  @override
  String get homePage_SecondPart_ThirdIntroduction =>
      'I currently work as a Senior Developer at Microsoft, using .NET, Angular, C#, and Power Automate as the main technologies. I also freelance in several areas such as Mobile, Desktop, and Web.';

  @override
  String get homePage_SecondPart_FourthIntroduction =>
      'Feel free to take a look at my full CV!';

  @override
  String get homePage_Resume => 'My CV';

  @override
  String get homePage_MyTools => 'Technologies I currently work with:';
}
