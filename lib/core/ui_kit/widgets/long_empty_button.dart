import 'package:flutter/material.dart';
import 'package:n_plus_one/core/ui_kit/constants/colors.dart';
import 'package:n_plus_one/core/ui_kit/constants/text_styles.dart';

class LongEmptyButton extends StatelessWidget {
  final Color buttonColor;
  final String textValue;
  final Color textColor;
  final Function() onPressed;

  LongEmptyButton({
    required this.buttonColor,
    required this.textValue,
    required this.textColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(8),
      elevation: 0,
      child: Container(
        height: 52,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: AppColors.frontGray1),
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () => onPressed(),
            borderRadius: BorderRadius.circular(8),
            child: Center(
              child: Text(
                textValue,
                style: AppTextStyles.regular16pt,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
