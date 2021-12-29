import 'package:flutter/material.dart';
import 'package:n_plus_one/core/ui_kit/constants/colors.dart';
import 'package:n_plus_one/core/ui_kit/constants/text_styles.dart';

class OnboardingScreen extends StatelessWidget {
  final String mainText;
  final String secondaryText;
  final String image;
  final String backgroundImage;

  const OnboardingScreen({
    Key? key,
    required this.mainText,
    required this.secondaryText,
    required this.image,
    required this.backgroundImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: AppColors.gray1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Background and Image
          Stack(
            children: [
              // background
              Positioned(
                child: Image.asset(
                  backgroundImage,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
              ),

              // image
              Positioned(
                top: MediaQuery.of(context).padding.top + 52,
                left: 12,
                right: 12,
                child: Image.asset(
                  image,
                  width: MediaQuery.of(context).size.width - 24,
                  height: MediaQuery.of(context).size.width - 24,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          Spacer(),

          // Main Text
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Text(
              mainText,
              textAlign: TextAlign.center,
              style: AppTextStyles.regular20pt,
            ),
          ),
          const SizedBox(height: 24),

          // Text
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Text(
              secondaryText,
              textAlign: TextAlign.center,
              style:
                  AppTextStyles.regular16pt.copyWith(color: AppColors.gray2nd),
            ),
          ),
          SizedBox(
              height: MediaQuery.of(context).padding.bottom + 24 + 52 + 24),
        ],
      ),
    );
  }
}
