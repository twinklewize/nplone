import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:n_plus_one/presentation/ui_kit/colors/colors.dart';
import 'package:n_plus_one/presentation/ui_kit/constants/text_styles.dart';
import 'package:n_plus_one/presentation/ui_kit/widgets/long_empty_button.dart';
import 'package:n_plus_one/presentation/ui_kit/widgets/long_filled_button.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.gray1,
      body: Container(
        color: AppColors.gray1,
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
                            AppColors.gray1.withOpacity(0),
                            AppColors.gray1.withOpacity(0.33),
                            AppColors.gray1,
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
                              style: AppTextStyles.bold24pt,
                            ),
                            Text(
                              'banking social network',
                              textAlign: TextAlign.center,
                              style: AppTextStyles.bold24pt,
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
                  buttonColor: AppColors.blue,
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
                  buttonColor: AppColors.blue,
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
                    Navigator.pushNamed(
                      context,
                      '/signup',
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
                  buttonColor: AppColors.gray1,
                  textValue: 'Login',
                  textColor: Colors.white,
                  onPressed: () {
                    print("Login");
                    Navigator.pushNamed(
                      context,
                      '/login',
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
