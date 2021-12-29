import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:n_plus_one/core/ui_kit/constants/colors.dart';
import 'package:n_plus_one/core/ui_kit/constants/text_styles.dart';
import 'package:n_plus_one/core/ui_kit/widgets/long_filled_button.dart';

class ParticipantButtonsWidget extends StatelessWidget {
  final Function() inventationButton;
  const ParticipantButtonsWidget({
    Key? key,
    required this.inventationButton,
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
        SizedBox(width: 12),
      ],
    );
  }
}
