import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:n_plus_one/core/localization/generated/l10n.dart';
import 'package:n_plus_one/domain/entities/new_entities/auth_entities/user_login_entity.dart';
import 'package:n_plus_one/locator_service.dart';
import 'package:n_plus_one/presentation/features/authentication/bloc/login_bloc/login_bloc.dart';
import 'package:n_plus_one/presentation/ui_kit/constants/colors.dart';
import 'package:n_plus_one/presentation/ui_kit/constants/text_styles.dart';
import 'package:n_plus_one/presentation/ui_kit/widgets/long_filled_button.dart';
import 'package:n_plus_one/presentation/ui_kit/widgets/textfield.dart';

class LoginPage extends StatelessWidget {
  static const routeName = '/login';

  final emailEditingController = TextEditingController();

  final passwordEditingController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  String? Function(String? value)? emailValidation(BuildContext context) {
    return (String? value) {
      if (value == null || value.isEmpty) {
        return S.of(context).loginPageEmailValidationTextFieldIsEmpty;
      }
      final emailValid =
          RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+");
      if (!emailValid.hasMatch(value)) {
        return S.of(context).loginPageEmailValidationNotValidEmail;
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
            .loginPagePasswordValidationPasswordIsTooShort(minPasswordLength);
      }
      return null;
    };
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginBloc>(
      create: (context) => sl<LoginBloc>(),
      child: Scaffold(
        appBar: appBar(context),
        resizeToAvoidBottomInset: false,
        body: Container(
          color: AppColors.gray1,
          child: SafeArea(
            child: Container(
              color: AppColors.gray1,
              child: Padding(
                padding: EdgeInsets.fromLTRB(12.0, 16.0, 12.0, 0),
                child: BlocBuilder<LoginBloc, LoginState>(
                  builder: (context, state) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Title
                        Text(
                          S.of(context).loginPageTitle,
                          style: AppTextStyles.bold32pt,
                        ),
                        SizedBox(height: 32),

                        // Form
                        Form(
                          key: _formKey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Email Text Field
                              Text(
                                S.of(context).loginPageEmailTextFieldTitle,
                                style: AppTextStyles.regular16pt,
                              ),
                              SizedBox(height: 4),
                              MyTextField(
                                onChanged: (_) {},
                                controller: emailEditingController,
                                fillColor: AppColors.gray1,
                                labelText: S
                                    .of(context)
                                    .loginPageEmailTextFieldHintText,
                                maxLines: 1,
                                minLines: 1,
                                keyboardType: TextInputType.emailAddress,
                                inputTextColor: Colors.white,
                                validationFunction: emailValidation(context),
                              ),
                              SizedBox(height: 32),

                              // Password Text Field
                              Text(
                                S.of(context).loginPagePasswordTextFieldTitle,
                                style: AppTextStyles.regular16pt,
                              ),
                              SizedBox(height: 4),
                              MyTextField(
                                onChanged: (_) {},
                                controller: passwordEditingController,
                                fillColor: AppColors.gray1,
                                labelText: S
                                    .of(context)
                                    .loginPagePasswordTextFieldHintText,
                                maxLines: 1,
                                minLines: 1,
                                keyboardType: TextInputType.visiblePassword,
                                inputTextColor: Colors.white,
                                textInputAction: TextInputAction.done,
                                enableSuggestions: false,
                                autocorrect: false,
                                obscureText: true,
                                validationFunction: passwordValidation(context),
                                errorText: (state is LoginFailedState)
                                    ? state.errorMessage
                                    : null,
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: 24),

                        // Forgot Password
                        TextButton(
                          child: Text(
                            S.of(context).loginPageForgotPasswordButton,
                            style: AppTextStyles.regular16pt
                                .copyWith(color: AppColors.blue),
                          ),
                          style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                              alignment: Alignment.centerLeft),
                          onPressed: () {},
                        ),
                        Spacer(),

                        // Loading
                        state is LoginLoadingState
                            ? Expanded(
                                child: Center(
                                    child: CircularProgressIndicator(
                                color: AppColors.blue,
                              )))
                            : const SizedBox(),

                        // Login Button
                        LongFilledButton(
                          buttonColor: AppColors.blue,
                          child: Text(
                            S.of(context).loginPageLoginButton,
                            style: AppTextStyles.regular16pt,
                          ),
                          onPressed: () {
                            final FormState form = _formKey.currentState!;
                            if (form.validate()) {
                              BlocProvider.of<LoginBloc>(context, listen: false)
                                ..add(
                                  UserLoginEvent(
                                    UserLoginEntity(
                                      email: emailEditingController.text,
                                      password: passwordEditingController.text,
                                    ),
                                    context,
                                  ),
                                );
                            }
                          },
                        ),
                        SizedBox(height: 24),
                      ],
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  AppBar appBar(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.gray1,
      elevation: 0,
      actions: [
        // Sign In Button
        TextButton(
          child: Text(
            S.of(context).loginPageSignInButton,
            style: AppTextStyles.regular16pt.copyWith(color: AppColors.blue),
          ),
          onPressed: () {
            Navigator.pushNamed(
              context,
              '/register',
            );
          },
        ),
      ],
    );
  }
}
