// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en_GB locale. All the
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
  String get localeName => 'en_GB';

  static String m0(minPasswordLength) =>
      "Please enter at least ${minPasswordLength} characters";

  static String m1(minPasswordLength) =>
      "Please enter at least ${minPasswordLength} characters";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "countryChoosingPageContinueButton":
            MessageLookupByLibrary.simpleMessage("Continue"),
        "countryChoosingPageDropdownHintText":
            MessageLookupByLibrary.simpleMessage("Select Country"),
        "countryChoosingPageMainText": MessageLookupByLibrary.simpleMessage(
            "Before you continue choose your country"),
        "countryChoosingPageSecondaryText": MessageLookupByLibrary.simpleMessage(
            "The registration process may differ from the choice of the country"),
        "loginPageEmailTextFieldHintText":
            MessageLookupByLibrary.simpleMessage("Email here"),
        "loginPageEmailTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("Email"),
        "loginPageEmailValidationNotValidEmail":
            MessageLookupByLibrary.simpleMessage("Please enter valid email"),
        "loginPageEmailValidationTextFieldIsEmpty":
            MessageLookupByLibrary.simpleMessage("Please enter some text"),
        "loginPageForgotPasswordButton":
            MessageLookupByLibrary.simpleMessage("Forgot Password?"),
        "loginPageLoginButton": MessageLookupByLibrary.simpleMessage("Login"),
        "loginPagePasswordNotMatchFailure":
            MessageLookupByLibrary.simpleMessage("Invalid password"),
        "loginPagePasswordTextFieldHintText":
            MessageLookupByLibrary.simpleMessage("Password here"),
        "loginPagePasswordTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("Password"),
        "loginPagePasswordUserNotFoundFailure":
            MessageLookupByLibrary.simpleMessage(
                "Email is invalid or already in use"),
        "loginPagePasswordValidationPasswordIsTooShort": m0,
        "loginPageServerFailure":
            MessageLookupByLibrary.simpleMessage("Server Failure"),
        "loginPageSignInButton":
            MessageLookupByLibrary.simpleMessage("Sign In"),
        "loginPageTitle": MessageLookupByLibrary.simpleMessage("Login"),
        "signinPageEmailTextFieldHintText":
            MessageLookupByLibrary.simpleMessage("Email here"),
        "signinPageEmailTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("Email"),
        "signinPageEmailValidationNotValidEmail":
            MessageLookupByLibrary.simpleMessage("Please enter valid email"),
        "signinPageEmailValidationTextFieldIsEmpty":
            MessageLookupByLibrary.simpleMessage("Please enter some text"),
        "signinPagePasswordNotMatchFailure":
            MessageLookupByLibrary.simpleMessage("Invalid password"),
        "signinPagePasswordTextFieldHintText":
            MessageLookupByLibrary.simpleMessage("Password here"),
        "signinPagePasswordTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("Password"),
        "signinPagePasswordUserNotFoundFailure":
            MessageLookupByLibrary.simpleMessage(
                "Email is invalid or already in use"),
        "signinPagePasswordValidationPasswordIsTooShort": m1,
        "signinPageServerFailure":
            MessageLookupByLibrary.simpleMessage("Server Failure"),
        "signinPageSignInButton":
            MessageLookupByLibrary.simpleMessage("Sign In"),
        "signinPageTitle": MessageLookupByLibrary.simpleMessage("Sign In"),
        "startPageLoginButton": MessageLookupByLibrary.simpleMessage("Login"),
        "startPageMainText": MessageLookupByLibrary.simpleMessage(
            "The World\'s first banking social network"),
        "startPageOrText": MessageLookupByLibrary.simpleMessage("or"),
        "startPageSecondaryText": MessageLookupByLibrary.simpleMessage(
            "Manage funds jointly, reliably and transapently"),
        "startPageSigninWithEmailButton":
            MessageLookupByLibrary.simpleMessage("Sign in with Email"),
        "startPageSigninWithGoogleButton":
            MessageLookupByLibrary.simpleMessage("Sign in with Google")
      };
}
