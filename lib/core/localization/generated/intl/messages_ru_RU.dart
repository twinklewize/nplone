// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ru_RU locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'ru_RU';

  static String m0(minPasswordLength) =>
      "Минимальная длина пароля ${minPasswordLength} символа";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "loginPageEmailTextFieldHintText":
            MessageLookupByLibrary.simpleMessage("Введите email"),
        "loginPageEmailTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("Email"),
        "loginPageEmailValidationNotValidEmail":
            MessageLookupByLibrary.simpleMessage("Неверный email"),
        "loginPageEmailValidationTextFieldIsEmpty":
            MessageLookupByLibrary.simpleMessage("Поле не может быть пустым"),
        "loginPageForgotPasswordButton":
            MessageLookupByLibrary.simpleMessage("Забыли пароль?"),
        "loginPageLoginButton": MessageLookupByLibrary.simpleMessage("Войти"),
        "loginPagePasswordNotMatchFailure":
            MessageLookupByLibrary.simpleMessage("Неверный пароль"),
        "loginPagePasswordTextFieldHintText":
            MessageLookupByLibrary.simpleMessage("Введите пароль"),
        "loginPagePasswordTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("Пароль"),
        "loginPagePasswordUserNotFoundFailure":
            MessageLookupByLibrary.simpleMessage(
                "Email неверный или уже используется"),
        "loginPagePasswordValidationPasswordIsTooShort": m0,
        "loginPageServerFailure":
            MessageLookupByLibrary.simpleMessage("Ошибка сервера"),
        "loginPageSignInButton":
            MessageLookupByLibrary.simpleMessage("Регистрация"),
        "loginPageTitle": MessageLookupByLibrary.simpleMessage("Вход"),
        "startPageLoginButton": MessageLookupByLibrary.simpleMessage("Вход"),
        "startPageMainText": MessageLookupByLibrary.simpleMessage(
            "Первая в мире банковская социальная сеть"),
        "startPageOrText": MessageLookupByLibrary.simpleMessage("или"),
        "startPageSecondaryText": MessageLookupByLibrary.simpleMessage(
            "Управляйте средствами совместно и прозрачно"),
        "startPageSigninWithEmailButton":
            MessageLookupByLibrary.simpleMessage("Регистрация"),
        "startPageSigninWithGoogleButton":
            MessageLookupByLibrary.simpleMessage("Войти через Google")
      };
}
