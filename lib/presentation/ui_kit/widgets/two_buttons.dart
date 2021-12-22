import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:n_plus_one/presentation/ui_kit/colors/colors.dart';
import 'package:n_plus_one/presentation/ui_kit/constants/text_styles.dart';
import 'package:n_plus_one/presentation/ui_kit/widgets/long_filled_button.dart';

class TwoButtons extends StatelessWidget {
  const TwoButtons({
    Key? key,
    required this.icon_1,
    required this.text_1,
    required this.onPressed_1,
    required this.icon_2,
    required this.text_2,
    required this.onPressed_2,
  }) : super(key: key);
  final String icon_1;
  final String text_1;
  final String icon_2;
  final String text_2;
  final Function() onPressed_1;
  final Function() onPressed_2;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const SizedBox(width: 12),

            // First Button
            Expanded(
              child: LongFilledButton(
                buttonColor: AppColors.white.withOpacity(0.1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(icon_1),
                    const SizedBox(width: 8),
                    Text(text_1, style: AppTextStyles.medium14pt)
                  ],
                ),
                onPressed: () => onPressed_1(),
                height: 40,
              ),
            ),
            const SizedBox(width: 12),

            // Second Button
            Expanded(
              child: LongFilledButton(
                buttonColor: AppColors.white.withOpacity(0.1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      child: SvgPicture.asset(icon_2),
                    ),
                    const SizedBox(width: 8),
                    Text(text_2, style: AppTextStyles.medium14pt)
                  ],
                ),
                onPressed: () => onPressed_2(),
                height: 40,
              ),
            ),
            const SizedBox(width: 12),
          ],
        ),
      ],
    );
  }
}
