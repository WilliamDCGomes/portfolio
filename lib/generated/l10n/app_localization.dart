import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localization_en.dart';
import 'app_localization_es.dart';
import 'app_localization_fr.dart';
import 'app_localization_pt.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localization.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('es'),
    Locale('fr'),
    Locale('pt'),
  ];

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'english'**
  String get language;

  /// No description provided for @initialPageMainMessage.
  ///
  /// In en, this message translates to:
  /// **'You pressed the button this amount of times:'**
  String get initialPageMainMessage;

  /// No description provided for @appCloseHelper_Warning.
  ///
  /// In en, this message translates to:
  /// **'Warning'**
  String get appCloseHelper_Warning;

  /// No description provided for @appCloseHelper_TnformationText.
  ///
  /// In en, this message translates to:
  /// **'Press again to exit'**
  String get appCloseHelper_TnformationText;

  /// No description provided for @informationPopup_ButtonOk.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get informationPopup_ButtonOk;

  /// No description provided for @textFieldValidatorsHelper_RequiredField.
  ///
  /// In en, this message translates to:
  /// **'Required field'**
  String get textFieldValidatorsHelper_RequiredField;

  /// No description provided for @textFieldValidatorsHelper_FirstMinimumNumberValidation.
  ///
  /// In en, this message translates to:
  /// **'Please provide the'**
  String get textFieldValidatorsHelper_FirstMinimumNumberValidation;

  /// No description provided for @textFieldValidatorsHelper_SecondMinimumNumberValidation.
  ///
  /// In en, this message translates to:
  /// **'is invalid'**
  String get textFieldValidatorsHelper_SecondMinimumNumberValidation;

  /// No description provided for @textFieldValidatorsHelper_FirstEmailValidation.
  ///
  /// In en, this message translates to:
  /// **'Please provide the email'**
  String get textFieldValidatorsHelper_FirstEmailValidation;

  /// No description provided for @textFieldValidatorsHelper_SecondEmailValidation.
  ///
  /// In en, this message translates to:
  /// **'Invalid email'**
  String get textFieldValidatorsHelper_SecondEmailValidation;

  /// No description provided for @flavors_Title.
  ///
  /// In en, this message translates to:
  /// **'Portfolio'**
  String get flavors_Title;

  /// No description provided for @headerPage_TabHome.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get headerPage_TabHome;

  /// No description provided for @headerPage_TabExperience.
  ///
  /// In en, this message translates to:
  /// **'Experience'**
  String get headerPage_TabExperience;

  /// No description provided for @headerPage_TabProject.
  ///
  /// In en, this message translates to:
  /// **'Projects'**
  String get headerPage_TabProject;

  /// No description provided for @headerPage_TabEducation.
  ///
  /// In en, this message translates to:
  /// **'Education'**
  String get headerPage_TabEducation;

  /// No description provided for @homePage_FirstIntroduction.
  ///
  /// In en, this message translates to:
  /// **'Hello! My name is William Douglas'**
  String get homePage_FirstIntroduction;

  /// No description provided for @homePage_SecondIntroduction.
  ///
  /// In en, this message translates to:
  /// **'Full Stack Developer and Technology Enthusiast'**
  String get homePage_SecondIntroduction;

  /// No description provided for @homePage_ThirdIntroduction.
  ///
  /// In en, this message translates to:
  /// **'I’m a developer passionate about technology and innovation. Here you can learn more about me, my work, and my projects.'**
  String get homePage_ThirdIntroduction;

  /// No description provided for @homePage_Scroll.
  ///
  /// In en, this message translates to:
  /// **'Scroll'**
  String get homePage_Scroll;

  /// No description provided for @homePage_SecondPart_FirstIntroduction.
  ///
  /// In en, this message translates to:
  /// **'Get to Know Me'**
  String get homePage_SecondPart_FirstIntroduction;

  /// No description provided for @homePage_SecondPart_SecondIntroduction.
  ///
  /// In en, this message translates to:
  /// **'Feel free to explore more about my work!'**
  String get homePage_SecondPart_SecondIntroduction;

  /// No description provided for @homePage_SecondPart_ThirdIntroduction.
  ///
  /// In en, this message translates to:
  /// **'I currently work as a Senior Developer at Microsoft, using .NET, Angular, C#, and Power Automate as the main technologies. I also freelance in several areas such as Mobile, Desktop, and Web.'**
  String get homePage_SecondPart_ThirdIntroduction;

  /// No description provided for @homePage_SecondPart_FourthIntroduction.
  ///
  /// In en, this message translates to:
  /// **'Feel free to take a look at my full CV!'**
  String get homePage_SecondPart_FourthIntroduction;

  /// No description provided for @homePage_Resume.
  ///
  /// In en, this message translates to:
  /// **'My CV'**
  String get homePage_Resume;

  /// No description provided for @homePage_MyTools.
  ///
  /// In en, this message translates to:
  /// **'Technologies I currently work with:'**
  String get homePage_MyTools;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'es', 'fr', 'pt'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'fr':
      return AppLocalizationsFr();
    case 'pt':
      return AppLocalizationsPt();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
