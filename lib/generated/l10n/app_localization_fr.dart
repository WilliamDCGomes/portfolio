// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localization.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get language => 'français';

  @override
  String get initialPageMainMessage =>
      'Vous avez appuyé sur le bouton autant de fois:';

  @override
  String get appCloseHelper_Warning => 'Avertissement';

  @override
  String get appCloseHelper_TnformationText =>
      'Appuyez de nouveau pour quitter';

  @override
  String get informationPopup_ButtonOk => 'D\'ACCORD';

  @override
  String get textFieldValidatorsHelper_RequiredField => 'Champ obligatoire';

  @override
  String get textFieldValidatorsHelper_FirstMinimumNumberValidation =>
      'Veuillez fournir le';

  @override
  String get textFieldValidatorsHelper_SecondMinimumNumberValidation =>
      'Invalide';

  @override
  String get textFieldValidatorsHelper_FirstEmailValidation =>
      'Veuillez fournir l’e-mail';

  @override
  String get textFieldValidatorsHelper_SecondEmailValidation =>
      'E-mail invalide';

  @override
  String get flavors_Title => 'Portfolio';

  @override
  String get headerPage_TabHome => 'Accueil';

  @override
  String get headerPage_TabExperience => 'Expériences';

  @override
  String get headerPage_TabProject => 'Projets';

  @override
  String get headerPage_TabEducation => 'Éducation';

  @override
  String get homePage_FirstIntroduction =>
      'Bonjour ! Je m\'appelle William Douglas';

  @override
  String get homePage_SecondIntroduction =>
      'Développeur Full Stack et passionné de technologie';

  @override
  String get homePage_ThirdIntroduction =>
      'Je suis un développeur passionné par la technologie et l\'innovation. Ici, vous pourrez en savoir plus sur moi, mon travail et mes projets.';

  @override
  String get homePage_Scroll => 'Scroll';

  @override
  String get homePage_SecondPart_FirstIntroduction => 'Faites connaissance';

  @override
  String get homePage_SecondPart_SecondIntroduction =>
      'N’hésitez pas à découvrir un peu plus mon travail !';

  @override
  String get homePage_SecondPart_ThirdIntroduction =>
      'Je travaille actuellement en tant que Développeur Senior chez Microsoft, en utilisant principalement .NET, Angular, C# et Power Automate. Je travaille également en freelance dans plusieurs domaines : mobile, bureau et web.';

  @override
  String get homePage_SecondPart_FourthIntroduction =>
      'N’hésitez pas à consulter mon CV complet !';

  @override
  String get homePage_Resume => 'Mon CV';

  @override
  String get homePage_MyTools => 'Technologies que j\'utilise actuellement:';
}
