import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:n_plus_one/presentation/ui_kit/colors/colors.dart';
import 'package:n_plus_one/presentation/ui_kit/widgets/long_filled_button.dart';
import 'package:n_plus_one/presentation/ui_kit/widgets/textfield.dart';

class RegisterPage extends StatelessWidget {
  // controllers
  final emailEditingController = TextEditingController();
  final passwordEditingController = TextEditingController();
  final repeatPasswordEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: background_black,
        elevation: 0,
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
                  // title
                  Text(
                    'Sing Up',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
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
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 4),
                        // email field
                        MyTextField(
                          onChanged: (value) => print(value),
                          controller: emailEditingController,
                          fillColor: background_black,
                          labelText: 'Email here',
                          maxLines: 1,
                          minLines: 1,
                          keyboardType: TextInputType.emailAddress,
                          inputTextColor: Colors.white,
                          textInputAction: TextInputAction.continueAction,
                        ),

                        SizedBox(height: 32),

                        // password title
                        Text(
                          'Password',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
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
                            fillColor: background_black,
                            labelText: 'Password here',
                            maxLines: 1,
                            minLines: 1,
                            keyboardType: TextInputType.emailAddress,
                            inputTextColor: Colors.white,
                            textInputAction: TextInputAction.continueAction,
                          ),
                        ),

                        SizedBox(height: 32),

                        // repeat password title
                        Text(
                          'Repeat Password',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
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
                            fillColor: background_black,
                            labelText: 'Password here',
                            maxLines: 1,
                            minLines: 1,
                            keyboardType: TextInputType.emailAddress,
                            inputTextColor: Colors.white,
                            textInputAction: TextInputAction.continueAction,
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
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                      children: [
                        new TextSpan(
                          text: 'N+1\'s User Agreement',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: blue,
                          ),
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
                    buttonColor: blue,
                    child: Text(
                      'Sign up',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
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
