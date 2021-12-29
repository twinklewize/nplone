import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:n_plus_one/core/ui_kit/constants/colors.dart';
import 'package:n_plus_one/core/ui_kit/constants/text_styles.dart';

class TextWithIcon extends StatelessWidget {
  const TextWithIcon({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  final String icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 12),
        SvgPicture.asset(icon, color: AppColors.green),
        const SizedBox(width: 8),
        Text(
          text,
          style: AppTextStyles.regular14pt.copyWith(color: AppColors.green),
        ),
      ],
    );
  }
}
