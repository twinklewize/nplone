import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:n_plus_one/core/localization/generated/l10n.dart';
import 'package:n_plus_one/presentation/ui_kit/constants/colors.dart';
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
                  // Background Image
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

                  // Logo
                  Positioned(
                    top: MediaQuery.of(context).size.width / 2 - 48,
                    right: 10,
                    left: 0,
                    child: SvgPicture.asset(
                      'assets/images/logo_n+1.svg',
                    ),
                  ),

                  // Main Text
                  Positioned(
                    top: MediaQuery.of(context).size.width - 96,
                    left: 0,
                    right: 10,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Center(
                        child: Text(
                          S.of(context).startPageMainText,
                          textAlign: TextAlign.center,
                          style: AppTextStyles.bold24pt,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Spacer(),

              // Secondary text
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                margin: const EdgeInsets.symmetric(horizontal: 64),
                child: Text(
                  S.of(context).startPageSecondaryText,
                  textAlign: TextAlign.center,
                  style: AppTextStyles.regular18pt,
                ),
              ),
              Spacer(flex: 6),

              // Sign in with Google Button
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
                        S.of(context).startPageSigninWithGoogleButton,
                        style: AppTextStyles.regular16pt,
                      ),
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(height: 8),

              // Sign in with Email Button
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
                        S.of(context).startPageSigninWithEmailButton,
                        style: AppTextStyles.regular16pt,
                      ),
                    ],
                  ),
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      '/register',
                    );
                  },
                ),
              ),
              SizedBox(height: 12),

              // Text "or"
              Center(
                child: Text(
                  S.of(context).startPageOrText,
                  style: AppTextStyles.regular18pt,
                ),
              ),
              SizedBox(height: 12),

              // Login Button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: LongEmptyButton(
                  buttonColor: AppColors.gray1,
                  textValue: S.of(context).startPageLoginButton,
                  textColor: Colors.white,
                  onPressed: () {
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
