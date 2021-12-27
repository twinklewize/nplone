import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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

  String? emailValidation(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter some text';
    }
    // final emailValid = RegExp(
    //     r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    // if (!emailValid.hasMatch(value)) {
    //   return 'Please enter valid email';
    // }
    return null;
  }

  String? passwordValidation(String? value) {
    if (value == null || value.length < 4) {
      return 'Please enter at least 4 characters';
    }
    return null;
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
                        Text(
                          'Login',
                          style: AppTextStyles.bold32pt,
                        ),
                        SizedBox(height: 32),
                        Form(
                          key: _formKey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Email
                              Text(
                                'Email',
                                style: AppTextStyles.regular16pt,
                              ),
                              SizedBox(height: 4),
                              MyTextField(
                                onChanged: (_) {},
                                controller: emailEditingController,
                                fillColor: AppColors.gray1,
                                labelText: 'Email here',
                                maxLines: 1,
                                minLines: 1,
                                keyboardType: TextInputType.emailAddress,
                                inputTextColor: Colors.white,
                                validationFunction: emailValidation,
                                errorText: (state is LoginFailedState)
                                    ? state.errorMessage
                                    : null,
                              ),
                              SizedBox(height: 32),

                              // Password
                              Text(
                                'Password',
                                style: AppTextStyles.regular16pt,
                              ),
                              SizedBox(height: 4),
                              MyTextField(
                                onChanged: (_) {},
                                controller: passwordEditingController,
                                fillColor: AppColors.gray1,
                                labelText: 'Password here',
                                maxLines: 1,
                                minLines: 1,
                                keyboardType: TextInputType.visiblePassword,
                                inputTextColor: Colors.white,
                                textInputAction: TextInputAction.done,
                                validationFunction: passwordValidation,
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: 24),

                        // Forgot Password
                        TextButton(
                          child: Text(
                            'Forgot password?',
                            style: AppTextStyles.regular16pt
                                .copyWith(color: AppColors.blue),
                          ),
                          onPressed: () {
                            print('Forgot password?');
                          },
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

                        // Button
                        LongFilledButton(
                          buttonColor: AppColors.blue,
                          child: Text(
                            'Login',
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
        TextButton(
          child: Text(
            'Register',
            style: AppTextStyles.regular16pt.copyWith(color: AppColors.blue),
          ),
          onPressed: () {
            Navigator.pushReplacementNamed(
              context,
              '/register',
            );
          },
        ),
      ],
    );
  }
}
