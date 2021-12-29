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

  /// `Invalid password`
  String get loginPagePasswordNotMatchFailure {
    return Intl.message(
      'Invalid password',
      name: 'loginPagePasswordNotMatchFailure',
      desc: '',
      args: [],
    );
  }

  /// `Email is invalid or already in use`
  String get loginPagePasswordUserNotFoundFailure {
    return Intl.message(
      'Email is invalid or already in use',
      name: 'loginPagePasswordUserNotFoundFailure',
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
