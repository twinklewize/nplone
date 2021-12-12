import 'package:flutter/material.dart';
import 'package:n_plus_one/presentation/features/authentication/pages/register_page.dart';
import 'package:n_plus_one/presentation/features/onboarding/onboarding_page.dart';
import 'package:n_plus_one/presentation/ui_kit/colors/colors.dart';
import 'package:n_plus_one/presentation/ui_kit/widgets/long_filled_button.dart';
import 'package:n_plus_one/presentation/ui_kit/widgets/textfield.dart';

class LoginPage extends StatelessWidget {
  final emailEditingController = TextEditingController();
  final passwordEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: background_black,
        elevation: 0,
        actions: [
          TextButton(
            child: Text(
              'Register',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: blue,
              ),
            ),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => RegisterPage(),
                ),
              );
            },
          ),
        ],
      ),
      resizeToAvoidBottomInset: false,
      body: Container(
        color: background_black,
        child: SafeArea(
          child: Container(
            color: background_black,
            child: Padding(
              padding: EdgeInsets.fromLTRB(12.0, 16.0, 12.0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 32),
                  Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Email',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 4),
                        MyTextField(
                          onChanged: (value) => print(value),
                          controller: emailEditingController,
                          fillColor: background_black,
                          labelText: 'Email here',
                          maxLines: 1,
                          minLines: 1,
                          keyboardType: TextInputType.emailAddress,
                          inputTextColor: Colors.white,
                        ),
                        SizedBox(height: 32),
                        Text(
                          'Password',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
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
                            fillColor: background_black,
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
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: blue,
                      ),
                    ),
                    onPressed: () {
                      print('Forgot password?');
                    },
                  ),
                  Spacer(),
                  LongFilledButton(
                    buttonColor: blue,
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => OnboardingPage(),
                        ),
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
