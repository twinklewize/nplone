import 'package:flutter/material.dart';
import 'package:n_plus_one/presentation/ui_kit/constants/colors.dart';
import 'package:n_plus_one/presentation/ui_kit/constants/text_styles.dart';
import 'package:n_plus_one/presentation/ui_kit/widgets/long_filled_button.dart';
import 'package:n_plus_one/presentation/ui_kit/widgets/textfield.dart';

class LoginPage extends StatelessWidget {
  static const routeName = '/login';
  final emailEditingController = TextEditingController();
  final passwordEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                  Text(
                    'Login',
                    style: AppTextStyles.bold32pt,
                  ),
                  SizedBox(height: 32),
                  Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Email',
                          style: AppTextStyles.regular16pt,
                        ),
                        SizedBox(height: 4),
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
                        Text(
                          'Password',
                          style: AppTextStyles.regular16pt,
                        ),
                        SizedBox(height: 4),
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
                      ],
                    ),
                  ),
                  SizedBox(height: 24),
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
                  LongFilledButton(
                    buttonColor: AppColors.blue,
                    child: Text(
                      'Login',
                      style: AppTextStyles.regular16pt,
                    ),
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                        context,
                        '/onboarding',
                      );
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
