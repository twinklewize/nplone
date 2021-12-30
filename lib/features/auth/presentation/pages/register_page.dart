import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:n_plus_one/core/localization/generated/l10n.dart';
import 'package:n_plus_one/core/ui_kit/constants/colors.dart';
import 'package:n_plus_one/core/ui_kit/constants/text_styles.dart';
import 'package:n_plus_one/core/ui_kit/widgets/long_filled_button.dart';
import 'package:n_plus_one/core/ui_kit/widgets/textfield.dart';
import 'package:n_plus_one/locator_service.dart';

import '../bloc/register_bloc/register_bloc.dart';

class RegisterPage extends StatelessWidget {
  static const routeName = '/register';
  // controllers
  final emailEditingController = TextEditingController();
  final passwordEditingController = TextEditingController();
  final repeatPasswordEditingController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  String? Function(String? value)? emailValidation(BuildContext context) {
    return (String? value) {
      if (value == null || value.isEmpty) {
        return S.of(context).signinPageEmailValidationTextFieldIsEmpty;
      }
      final emailValid =
          RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+");
      if (!emailValid.hasMatch(value)) {
        return S.of(context).signinPageEmailValidationNotValidEmail;
      }
      return null;
    };
  }

  String? Function(String? value)? passwordValidation(BuildContext context) {
    return (String? value) {
      final int minPasswordLength = 4;
      if (value == null || value.length < minPasswordLength) {
        return S
            .of(context)
            .signinPagePasswordValidationPasswordIsTooShort(minPasswordLength);
      }
      return null;
    };
  }

  String? Function(String? value)? repeatPasswordValidation(
      BuildContext context) {
    return (String? value) {
      final int minPasswordLength = 4;
      if (value == null || value.length < minPasswordLength) {
        return S
            .of(context)
            .signinPagePasswordValidationPasswordIsTooShort(minPasswordLength);
      }
      if (value != passwordEditingController.text) {
        return S
            .of(context)
            .signinPageRepeatPasswordValidationPasswordsNotMatch;
      }
      return null;
    };
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RegisterBloc>(
      create: (context) => sl<RegisterBloc>(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.gray1,
          elevation: 0,
        ),
        resizeToAvoidBottomInset: false,
        body: Container(
          color: AppColors.gray1,
          child: SafeArea(
            child: Container(
              color: AppColors.gray1,
              child: Padding(
                padding: EdgeInsets.fromLTRB(12.0, 16.0, 12.0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // title
                    Text(
                      S.of(context).signinPageTitle,
                      style: AppTextStyles.bold32pt,
                    ),

                    //
                    SizedBox(height: 32),

                    // Form
                    Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // email title
                          Text(
                            S.of(context).signinPageEmailTextFieldTitle,
                            style: AppTextStyles.regular16pt,
                          ),
                          SizedBox(height: 4),
                          // email field
                          MyTextField(
                            onChanged: (value) => print(value),
                            controller: emailEditingController,
                            fillColor: AppColors.gray1,
                            labelText:
                                S.of(context).signinPageEmailTextFieldHintText,
                            maxLines: 1,
                            minLines: 1,
                            keyboardType: TextInputType.emailAddress,
                            inputTextColor: Colors.white,
                            validationFunction: emailValidation(context),
                          ),

                          SizedBox(height: 32),

                          // password title
                          Text(
                            S.of(context).signinPagePasswordTextFieldTitle,
                            style: AppTextStyles.regular16pt,
                          ),
                          SizedBox(height: 4),

                          // password field
                          MyTextField(
                            onChanged: (value) => print(value),
                            controller: passwordEditingController,
                            fillColor: AppColors.gray1,
                            labelText: S
                                .of(context)
                                .signinPagePasswordTextFieldHintText,
                            maxLines: 1,
                            minLines: 1,
                            keyboardType: TextInputType.emailAddress,
                            inputTextColor: Colors.white,
                            enableSuggestions: false,
                            autocorrect: false,
                            obscureText: true,
                            validationFunction: passwordValidation(context),
                          ),

                          SizedBox(height: 32),

                          // repeat password title
                          Text(
                            S
                                .of(context)
                                .signinPageRepeatPasswordTextFieldTitle,
                            style: AppTextStyles.regular16pt,
                          ),
                          SizedBox(height: 4),

                          // repeat password field
                          MyTextField(
                            onChanged: (value) => print(value),
                            controller: repeatPasswordEditingController,
                            fillColor: AppColors.gray1,
                            labelText: S
                                .of(context)
                                .signinPageRepeatPasswordTextFieldHintText,
                            maxLines: 1,
                            minLines: 1,
                            keyboardType: TextInputType.emailAddress,
                            inputTextColor: Colors.white,
                            enableSuggestions: false,
                            autocorrect: false,
                            obscureText: true,
                            validationFunction:
                                repeatPasswordValidation(context),
                            textInputAction: TextInputAction.done,
                          ),
                        ],
                      ),
                    ),

                    //
                    SizedBox(height: 32),

                    // terms
                    RichText(
                      text: new TextSpan(
                        text:
                            S.of(context).signinPageByPressingSignInYouAgreeTo,
                        style: AppTextStyles.regular16pt,
                        children: [
                          new TextSpan(
                            text: S.of(context).signinPageNploneAgreement,
                            style: AppTextStyles.regular16pt
                                .copyWith(color: AppColors.blue),
                            recognizer: new TapGestureRecognizer()
                              ..onTap = () => () {},
                          )
                        ],
                      ),
                    ),

                    //
                    Spacer(),

                    // кнопка sign in
                    LongFilledButton(
                      buttonColor: AppColors.blue,
                      child: Text(
                        S.of(context).signinPageSignInButton,
                        style: AppTextStyles.regular16pt,
                      ),
                      onPressed: () {
                        final FormState form = _formKey.currentState!;
                        if (form.validate()) {
                          BlocProvider.of<RegisterBloc>(context, listen: false)
                            ..add(
                              AddEmailAndPasswordEvent(
                                email: emailEditingController.text,
                                password: passwordEditingController.text,
                              ),
                            );
                          Navigator.pushNamed(context, '/country-choosing');
                        }
                      },
                    ),
                    SizedBox(height: 24),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
