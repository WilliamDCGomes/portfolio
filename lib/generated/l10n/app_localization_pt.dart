// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localization.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get language => 'português - br';

  @override
  String get initialPageMainMessage =>
      'Você apertou o botão essa quantidade de vezes:';

  @override
  String get appCloseHelper_Warning => 'Aviso';

  @override
  String get appCloseHelper_TnformationText => 'Pressione novamente para sair';

  @override
  String get informationPopup_ButtonOk => 'OK';

  @override
  String get textFieldValidatorsHelper_RequiredField => 'Campo obrigatório';

  @override
  String get textFieldValidatorsHelper_FirstMinimumNumberValidation =>
      'Informe o';

  @override
  String get textFieldValidatorsHelper_SecondMinimumNumberValidation =>
      'Inválido';

  @override
  String get textFieldValidatorsHelper_FirstEmailValidation =>
      'Informe o E-mail';

  @override
  String get textFieldValidatorsHelper_SecondEmailValidation =>
      'E-mail Inválido';

  @override
  String get flavors_Title => 'Portfólio';

  @override
  String get headerPage_TabHome => 'Início';

  @override
  String get headerPage_TabExperience => 'Experiências';

  @override
  String get headerPage_TabProject => 'Projetos';

  @override
  String get headerPage_TabEducation => 'Formação';

  @override
  String get homePage_FirstIntroduction => 'Olá! Eu me chamo William Douglas';

  @override
  String get homePage_SecondIntroduction =>
      'Desenvolvedor Full Stack e Entusiasta da tecnologia';

  @override
  String get homePage_ThirdIntroduction =>
      'Sou um desenvolvedor apaixonado por tecnologia e inovação. Aqui você poderá conhecer mais sobre mim, meu trabalho e meus projetos';

  @override
  String get homePage_Scroll => 'Scroll';

  @override
  String get homePage_SecondPart_FirstIntroduction => 'Me Conheça';

  @override
  String get homePage_SecondPart_SecondIntroduction =>
      'Sinta-se a vontade para conhecer um pouco mais do meu trabalho!';

  @override
  String get homePage_SecondPart_ThirdIntroduction =>
      'Trabalho atualmente como Desenvolvedor Sênior na Microsoft, utilizando .NET, Angular, C# e Power Automate como as tecnologias principais, mas também atuo como Freelancer em diversas áreas de atuação, como Mobile, Desktop ou Web.';

  @override
  String get homePage_SecondPart_FourthIntroduction =>
      'Sinta-se a vontade para dar uma olhada no meu currículo completo!';

  @override
  String get homePage_Resume => 'Meu Currículo';

  @override
  String get homePage_MyTools => 'Tecnologias com que trabalho atualmente:';
}
