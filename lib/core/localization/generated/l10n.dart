// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `The World's first banking social network`
  String get startPageMainText {
    return Intl.message(
      'The World\'s first banking social network',
      name: 'startPageMainText',
      desc: '',
      args: [],
    );
  }

  /// `Manage funds jointly, reliably and transapently`
  String get startPageSecondaryText {
    return Intl.message(
      'Manage funds jointly, reliably and transapently',
      name: 'startPageSecondaryText',
      desc: '',
      args: [],
    );
  }

  /// `Sign in with Google`
  String get startPageSigninWithGoogleButton {
    return Intl.message(
      'Sign in with Google',
      name: 'startPageSigninWithGoogleButton',
      desc: '',
      args: [],
    );
  }

  /// `Sign in with Email`
  String get startPageSigninWithEmailButton {
    return Intl.message(
      'Sign in with Email',
      name: 'startPageSigninWithEmailButton',
      desc: '',
      args: [],
    );
  }

  /// `or`
  String get startPageOrText {
    return Intl.message(
      'or',
      name: 'startPageOrText',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get startPageLoginButton {
    return Intl.message(
      'Login',
      name: 'startPageLoginButton',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get loginPageTitle {
    return Intl.message(
      'Login',
      name: 'loginPageTitle',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get loginPageEmailTextFieldTitle {
    return Intl.message(
      'Email',
      name: 'loginPageEmailTextFieldTitle',
      desc: '',
      args: [],
    );
  }

  /// `Email here`
  String get loginPageEmailTextFieldHintText {
    return Intl.message(
      'Email here',
      name: 'loginPageEmailTextFieldHintText',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get loginPagePasswordTextFieldTitle {
    return Intl.message(
      'Password',
      name: 'loginPagePasswordTextFieldTitle',
      desc: '',
      args: [],
    );
  }

  /// `Password here`
  String get loginPagePasswordTextFieldHintText {
    return Intl.message(
      'Password here',
      name: 'loginPagePasswordTextFieldHintText',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password?`
  String get loginPageForgotPasswordButton {
    return Intl.message(
      'Forgot Password?',
      name: 'loginPageForgotPasswordButton',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get loginPageSignInButton {
    return Intl.message(
      'Sign In',
      name: 'loginPageSignInButton',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get loginPageLoginButton {
    return Intl.message(
      'Login',
      name: 'loginPageLoginButton',
      desc: '',
      args: [],
    );
  }

  /// `Please enter some text`
  String get loginPageEmailValidationTextFieldIsEmpty {
    return Intl.message(
      'Please enter some text',
      name: 'loginPageEmailValidationTextFieldIsEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Please enter valid email`
  String get loginPageEmailValidationNotValidEmail {
    return Intl.message(
      'Please enter valid email',
      name: 'loginPageEmailValidationNotValidEmail',
      desc: '',
      args: [],
    );
  }

  /// `Please enter at least {minPasswordLength} characters`
  String loginPagePasswordValidationPasswordIsTooShort(
      Object minPasswordLength) {
    return Intl.message(
      'Please enter at least $minPasswordLength characters',
      name: 'loginPagePasswordValidationPasswordIsTooShort',
      desc: '',
      args: [minPasswordLength],
    );
  }

  /// `Server Failure`
  String get loginPageServerFailure {
    return Intl.message(
      'Server Failure',
      name: 'loginPageServerFailure',
      desc: '',
      args: [],
    );
  }

  /// `No Internet Connection`
  String get loginPageNoInternetConnectionFailure {
    return Intl.message(
      'No Internet Connection',
      name: 'loginPageNoInternetConnectionFailure',
      desc: '',
      args: [],
    );
  }

  /// `Invalid password`
  String get loginPagePasswordNotMatchFailure {
    return Intl.message(
      'Invalid password',
      name: 'loginPagePasswordNotMatchFailure',
      desc: '',
      args: [],
    );
  }

  /// `Email is invalid or not exist`
  String get loginPagePasswordUserNotFoundFailure {
    return Intl.message(
      'Email is invalid or not exist',
      name: 'loginPagePasswordUserNotFoundFailure',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get signinPageTitle {
    return Intl.message(
      'Sign In',
      name: 'signinPageTitle',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get signinPageEmailTextFieldTitle {
    return Intl.message(
      'Email',
      name: 'signinPageEmailTextFieldTitle',
      desc: '',
      args: [],
    );
  }

  /// `Email here`
  String get signinPageEmailTextFieldHintText {
    return Intl.message(
      'Email here',
      name: 'signinPageEmailTextFieldHintText',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get signinPagePasswordTextFieldTitle {
    return Intl.message(
      'Password',
      name: 'signinPagePasswordTextFieldTitle',
      desc: '',
      args: [],
    );
  }

  /// `Repeat password`
  String get signinPageRepeatPasswordTextFieldTitle {
    return Intl.message(
      'Repeat password',
      name: 'signinPageRepeatPasswordTextFieldTitle',
      desc: '',
      args: [],
    );
  }

  /// `Password here`
  String get signinPagePasswordTextFieldHintText {
    return Intl.message(
      'Password here',
      name: 'signinPagePasswordTextFieldHintText',
      desc: '',
      args: [],
    );
  }

  /// `Password here`
  String get signinPageRepeatPasswordTextFieldHintText {
    return Intl.message(
      'Password here',
      name: 'signinPageRepeatPasswordTextFieldHintText',
      desc: '',
      args: [],
    );
  }

  /// `By pressing "Sign In", you agree to `
  String get signinPageByPressingSignInYouAgreeTo {
    return Intl.message(
      'By pressing "Sign In", you agree to ',
      name: 'signinPageByPressingSignInYouAgreeTo',
      desc: '',
      args: [],
    );
  }

  /// `N+1's User Agreement`
  String get signinPageNploneAgreement {
    return Intl.message(
      'N+1\'s User Agreement',
      name: 'signinPageNploneAgreement',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get signinPageSignInButton {
    return Intl.message(
      'Sign In',
      name: 'signinPageSignInButton',
      desc: '',
      args: [],
    );
  }

  /// `Please enter some text`
  String get signinPageEmailValidationTextFieldIsEmpty {
    return Intl.message(
      'Please enter some text',
      name: 'signinPageEmailValidationTextFieldIsEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Please enter valid email`
  String get signinPageEmailValidationNotValidEmail {
    return Intl.message(
      'Please enter valid email',
      name: 'signinPageEmailValidationNotValidEmail',
      desc: '',
      args: [],
    );
  }

  /// `Please enter at least {minPasswordLength} characters`
  String signinPagePasswordValidationPasswordIsTooShort(
      Object minPasswordLength) {
    return Intl.message(
      'Please enter at least $minPasswordLength characters',
      name: 'signinPagePasswordValidationPasswordIsTooShort',
      desc: '',
      args: [minPasswordLength],
    );
  }

  /// `Passwords must match`
  String get signinPageRepeatPasswordValidationPasswordsNotMatch {
    return Intl.message(
      'Passwords must match',
      name: 'signinPageRepeatPasswordValidationPasswordsNotMatch',
      desc: '',
      args: [],
    );
  }

  /// `Server Failure`
  String get countryChoosingPageServerFailure {
    return Intl.message(
      'Server Failure',
      name: 'countryChoosingPageServerFailure',
      desc: '',
      args: [],
    );
  }

  /// `No Internet Connection`
  String get countryChoosingPageNoInternetConnectionFailure {
    return Intl.message(
      'No Internet Connection',
      name: 'countryChoosingPageNoInternetConnectionFailure',
      desc: '',
      args: [],
    );
  }

  /// `Email is invalid or already in use.`
  String get countryChoosingPageRegisterFailure {
    return Intl.message(
      'Email is invalid or already in use.',
      name: 'countryChoosingPageRegisterFailure',
      desc: '',
      args: [],
    );
  }

  /// `Before you continue choose your country`
  String get countryChoosingPageMainText {
    return Intl.message(
      'Before you continue choose your country',
      name: 'countryChoosingPageMainText',
      desc: '',
      args: [],
    );
  }

  /// `Select Country`
  String get countryChoosingPageDropdownHintText {
    return Intl.message(
      'Select Country',
      name: 'countryChoosingPageDropdownHintText',
      desc: '',
      args: [],
    );
  }

  /// `The registration process may differ from the choice of the country`
  String get countryChoosingPageSecondaryText {
    return Intl.message(
      'The registration process may differ from the choice of the country',
      name: 'countryChoosingPageSecondaryText',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get countryChoosingPageContinueButton {
    return Intl.message(
      'Continue',
      name: 'countryChoosingPageContinueButton',
      desc: '',
      args: [],
    );
  }

  /// `Select country`
  String get countryModalBottomSheetTitle {
    return Intl.message(
      'Select country',
      name: 'countryModalBottomSheetTitle',
      desc: '',
      args: [],
    );
  }

  /// `No results`
  String get countryModalBottomSheetNoResults {
    return Intl.message(
      'No results',
      name: 'countryModalBottomSheetNoResults',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get countryModalBottomSheetSearchHintText {
    return Intl.message(
      'Search',
      name: 'countryModalBottomSheetSearchHintText',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en', countryCode: 'GB'),
      Locale.fromSubtags(languageCode: 'de', countryCode: 'DE'),
      Locale.fromSubtags(languageCode: 'ru', countryCode: 'RU'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
