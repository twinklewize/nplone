import 'package:flutter/material.dart';
import 'package:n_plus_one/presentation/ui_kit/colors/colors.dart';

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
      color: background_black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              Positioned(
                child: Image.asset(
                  backgroundImage,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
              ),
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Text(
              mainText,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Text(
              secondaryText,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFFB3B3B8),
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(
              height: MediaQuery.of(context).padding.bottom + 24 + 52 + 24),
        ],
      ),
    );
  }
}
