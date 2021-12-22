import 'package:flutter/material.dart';
import 'package:n_plus_one/core/utils/text_formatter.dart';
import 'package:n_plus_one/presentation/ui_kit/colors/colors.dart';
import 'package:n_plus_one/presentation/ui_kit/constants/text_styles.dart';
import 'package:n_plus_one/presentation/ui_kit/widgets/long_filled_button.dart';

class PayAndViewAllButtons extends StatelessWidget {
  final int viewAllCount;
  final double paySum;
  final Function() payButton;
  final Function() viewAllButton;
  const PayAndViewAllButtons({
    Key? key,
    this.viewAllCount = 0,
    required this.paySum,
    required this.payButton,
    required this.viewAllButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Pay Button
        Expanded(
          child: LongFilledButton(
            buttonColor: AppColors.green.withOpacity(0.2),
            onPressed: () => payButton(),
            child: Text(
              'Pay ${TextFormatter.sumToString(paySum)}',
              style: AppTextStyles.medium14pt.copyWith(
                color: AppColors.green,
              ),
            ),
            height: 40,
          ),
        ),
        const SizedBox(width: 8),

        // View All Button
        Expanded(
          child: LongFilledButton(
            buttonColor: AppColors.white.withOpacity(0.1),
            onPressed: () => viewAllButton(),
            child: Text(
              viewAllCount == 0 ? 'Hide' : 'View All($viewAllCount)',
              style: AppTextStyles.medium14pt,
            ),
            height: 40,
          ),
        ),
      ],
    );
  }
}
