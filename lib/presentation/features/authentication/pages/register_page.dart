import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:n_plus_one/presentation/ui_kit/constants/colors.dart';
import 'package:n_plus_one/presentation/ui_kit/constants/text_styles.dart';
import 'package:n_plus_one/presentation/ui_kit/widgets/long_filled_button.dart';
import 'package:n_plus_one/presentation/ui_kit/widgets/textfield.dart';

class RegisterPage extends StatelessWidget {
  static const routeName = '/register';
  // controllers
  final emailEditingController = TextEditingController();
  final passwordEditingController = TextEditingController();
  final repeatPasswordEditingController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  String? emailValidation(String? value) {
    // if (value == null || value.isEmpty) {
    //   return 'Please enter some text';
    // }
    // final emailValid = RegExp(
    //     r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    // if (!emailValid.hasMatch(value)) {
    //   return 'Please enter valid email';
    // }
    return null;
  }

  String? passwordValidation(String? value) {
    // if (value == null || value.length < 4) {
    //   return 'Please enter at least 4 characters';
    // }
    return null;
  }

  String? repeatPasswordValidation(String? value) {
    // if (value == null || value.length < 4) {
    //   return 'Please enter at least 4 characters';
    // }
    // if (value != passwordEditingController.text) {
    //   return 'Passwords must match';
    // }
    // return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    'Sing In',
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
                          'Email',
                          style: AppTextStyles.regular16pt,
                        ),
                        SizedBox(height: 4),
                        // email field
                        MyTextField(
                          onChanged: (value) => print(value),
                          controller: emailEditingController,
                          fillColor: AppColors.gray1,
                          labelText: 'Email here',
                          maxLines: 1,
                          minLines: 1,
                          keyboardType: TextInputType.emailAddress,
                          inputTextColor: Colors.white,
                          validationFunction: emailValidation,
                        ),

                        SizedBox(height: 32),

                        // password title
                        Text(
                          'Password',
                          style: AppTextStyles.regular16pt,
                        ),
                        SizedBox(height: 4),

                        // password field
                        MyTextField(
                          onChanged: (value) => print(value),
                          controller: passwordEditingController,
                          fillColor: AppColors.gray1,
                          labelText: 'Password here',
                          maxLines: 1,
                          minLines: 1,
                          keyboardType: TextInputType.emailAddress,
                          inputTextColor: Colors.white,
                          validationFunction: passwordValidation,
                        ),

                        SizedBox(height: 32),

                        // repeat password title
                        Text(
                          'Repeat Password',
                          style: AppTextStyles.regular16pt,
                        ),
                        SizedBox(height: 4),

                        // repeat password field
                        MyTextField(
                          onChanged: (value) => print(value),
                          controller: repeatPasswordEditingController,
                          fillColor: AppColors.gray1,
                          labelText: 'Password here',
                          maxLines: 1,
                          minLines: 1,
                          keyboardType: TextInputType.emailAddress,
                          inputTextColor: Colors.white,
                          validationFunction: repeatPasswordValidation,
                        ),
                      ],
                    ),
                  ),

                  //
                  SizedBox(height: 32),

                  // terms
                  RichText(
                    text: new TextSpan(
                      text: 'By pressing "Sign In", you agree to ',
                      style: AppTextStyles.regular16pt,
                      children: [
                        new TextSpan(
                          text: 'N+1\'s User Agreement',
                          style: AppTextStyles.regular16pt
                              .copyWith(color: AppColors.blue),
                          recognizer: new TapGestureRecognizer()
                            ..onTap = () => print('N+1\'s User Agreement'),
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
                      'Sign In',
                      style: AppTextStyles.regular16pt,
                    ),
                    onPressed: () {
                      final FormState form = _formKey.currentState!;
                      if (form.validate()) {
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
    );
  }
}
