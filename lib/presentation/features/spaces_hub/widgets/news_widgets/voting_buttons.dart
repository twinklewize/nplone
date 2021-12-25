import 'package:flutter/material.dart';
import 'package:n_plus_one/presentation/ui_kit/constants/colors.dart';
import 'package:n_plus_one/presentation/ui_kit/constants/text_styles.dart';
import 'package:n_plus_one/presentation/ui_kit/widgets/long_filled_button.dart';

class VotingButtons extends StatelessWidget {
  const VotingButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Vote Against Button
            Expanded(
              child: LongFilledButton(
                buttonColor: AppColors.red.withOpacity(0.2),
                onPressed: () {},
                child: Text(
                  'Vote Against',
                  style: AppTextStyles.medium14pt.copyWith(
                    color: AppColors.red,
                  ),
                ),
                height: 40,
              ),
            ),
            const SizedBox(width: 8),

            // Vote for Confirm Button
            Expanded(
              child: LongFilledButton(
                buttonColor: AppColors.green.withOpacity(0.2),
                onPressed: () {},
                child: Text(
                  'Vote for Confirm',
                  style: AppTextStyles.medium14pt.copyWith(
                    color: AppColors.green,
                  ),
                ),
                height: 40,
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
