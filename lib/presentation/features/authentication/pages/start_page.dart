import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:n_plus_one/presentation/features/authentication/pages/login_page.dart';
import 'package:n_plus_one/presentation/features/authentication/pages/register_page.dart';
import 'package:n_plus_one/presentation/ui_kit/colors/colors.dart';
import 'package:n_plus_one/presentation/ui_kit/widgets/long_empty_button.dart';
import 'package:n_plus_one/presentation/ui_kit/widgets/long_filled_button.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background_black,
      body: Container(
        color: background_black,
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Positioned(
                    child: RotatedBox(
                      quarterTurns: 4,
                      child: Image.asset(
                        'assets/images/angle_gradient.png',
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.width / 2,
                    child: Container(
                      height: MediaQuery.of(context).size.width / 2,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color.fromRGBO(27, 27, 28, 0),
                            Color.fromRGBO(27, 27, 28, 0.33),
                            Color.fromRGBO(27, 27, 28, 1),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.width / 2 - 48,
                    right: 10,
                    left: 0,
                    child: SvgPicture.asset(
                      'assets/images/logo_n+1.svg',
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.width - 96,
                    left: 0,
                    right: 10,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Center(
                        child: Column(
                          children: [
                            Text(
                              'The World’s first',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              'banking social network',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 19),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                margin: const EdgeInsets.symmetric(horizontal: 64),
                child: Text(
                  'Manage funds jointly, reliably and transparently',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: LongFilledButton(
                  buttonColor: blue,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/icons/google_icon.svg'),
                      SizedBox(width: 12),
                      Text(
                        'Continue with Google',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  onPressed: () {
                    print("Continue with Google");
                  },
                ),
              ),
              SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: LongFilledButton(
                  buttonColor: blue,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/icons/email_icon.svg'),
                      SizedBox(width: 12),
                      Text(
                        'Sign up with Email',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  onPressed: () {
                    print("Sign up with Email");
                    Navigator.of(context).push(
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => RegisterPage(),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 12),
              Center(
                child: Text(
                  'or',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: LongEmptyButton(
                  buttonColor: background_black,
                  textValue: 'Login',
                  textColor: Colors.white,
                  onPressed: () {
                    print("Login");
                    Navigator.of(context).push(
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => LoginPage(),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 56),
            ],
          ),
        ),
      ),
    );
  }
}

// Padding(
//               padding: EdgeInsets.fromLTRB(12.0, 16.0, 12.0, 0),
//               child: ,),
