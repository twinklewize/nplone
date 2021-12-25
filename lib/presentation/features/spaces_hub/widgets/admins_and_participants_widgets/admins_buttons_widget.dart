import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:n_plus_one/presentation/ui_kit/constants/colors.dart';
import 'package:n_plus_one/presentation/ui_kit/constants/text_styles.dart';
import 'package:n_plus_one/presentation/ui_kit/widgets/long_filled_button.dart';

class AdminsButtonsWidget extends StatelessWidget {
  final Function() inventationButton;
  final Function() addPersonButton;
  const AdminsButtonsWidget({
    Key? key,
    required this.inventationButton,
    required this.addPersonButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 12),
        Expanded(
          child: LongFilledButton(
            buttonColor: AppColors.green.withOpacity(0.2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/icons/copy.svg',
                  color: AppColors.green,
                ),
                // SizedBox(width: 8),
                Text(
                  'Copy Inventation Link',
                  style:
                      AppTextStyles.medium14pt.copyWith(color: AppColors.green),
                )
              ],
            ),
            onPressed: () => inventationButton,
            height: 40,
          ),
        ),
        const SizedBox(width: 8),
        LongFilledButton(
          buttonColor: AppColors.green.withOpacity(0.2),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/icons/plus_icon.svg',
                  color: AppColors.green,
                ),
                SizedBox(width: 8),
                Text(
                  'Add person',
                  style:
                      AppTextStyles.medium14pt.copyWith(color: AppColors.green),
                )
              ],
            ),
          ),
          onPressed: () => addPersonButton,
          height: 40,
        ),
        SizedBox(width: 12),
      ],
    );
  }
}
