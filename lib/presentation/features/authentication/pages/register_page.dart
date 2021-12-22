import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:n_plus_one/presentation/ui_kit/colors/colors.dart';
import 'package:n_plus_one/presentation/ui_kit/constants/text_styles.dart';
import 'package:n_plus_one/presentation/ui_kit/widgets/long_filled_button.dart';
import 'package:n_plus_one/presentation/ui_kit/widgets/textfield.dart';

class RegisterPage extends StatelessWidget {
  static const routeName = '/signup';
  // controllers
  final emailEditingController = TextEditingController();
  final passwordEditingController = TextEditingController();
  final repeatPasswordEditingController = TextEditingController();

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
                    'Sing Up',
                    style: AppTextStyles.bold32pt,
                  ),

                  //
                  SizedBox(height: 32),

                  // Form
                  Form(
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
                        ),

                        SizedBox(height: 32),

                        // password title
                        Text(
                          'Password',
                          style: AppTextStyles.regular16pt,
                        ),
                        SizedBox(height: 4),
                        // password field
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(14.0),
                          ),
                          child: MyTextField(
                            onChanged: (value) => print(value),
                            controller: passwordEditingController,
                            fillColor: AppColors.gray1,
                            labelText: 'Password here',
                            maxLines: 1,
                            minLines: 1,
                            keyboardType: TextInputType.emailAddress,
                            inputTextColor: Colors.white,
                          ),
                        ),

                        SizedBox(height: 32),

                        // repeat password title
                        Text(
                          'Repeat Password',
                          style: AppTextStyles.regular16pt,
                        ),
                        SizedBox(height: 4),
                        // repeat password field
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(14.0),
                          ),
                          child: MyTextField(
                            onChanged: (value) => print(value),
                            controller: repeatPasswordEditingController,
                            fillColor: AppColors.gray1,
                            labelText: 'Password here',
                            maxLines: 1,
                            minLines: 1,
                            keyboardType: TextInputType.emailAddress,
                            inputTextColor: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),

                  //
                  SizedBox(height: 32),

                  // terms
                  RichText(
                    text: new TextSpan(
                      text: 'By pressing continue, you agree to ',
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

                  // кнопка sign up
                  LongFilledButton(
                    buttonColor: AppColors.blue,
                    child: Text(
                      'Sign up',
                      style: AppTextStyles.regular16pt,
                    ),
                    onPressed: () {
                      print("login");
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
