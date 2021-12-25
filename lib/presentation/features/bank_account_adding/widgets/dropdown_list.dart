import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:n_plus_one/presentation/ui_kit/constants/colors.dart';
import 'package:n_plus_one/presentation/ui_kit/constants/text_styles.dart';

class DropdownList extends StatelessWidget {
  final String? imageURL;
  final String? text;
  final String defaultText;
  const DropdownList({
    Key? key,
    this.imageURL,
    this.text,
    this.defaultText = 'Select Bank',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: AppColors.white.withOpacity(0.2),
        ),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(6, 6, 8, 6),
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: AppColors.white.withOpacity(0.2),
                borderRadius: BorderRadius.circular(4),
              ),
              child: imageURL == null
                  ? const SizedBox()
                  : Image.network(imageURL!),
            ),
          ),
          text == null
              ? Text(
                  defaultText,
                  style: AppTextStyles.regular16pt.copyWith(
                    color: AppColors.white.withOpacity(0.5),
                  ),
                )
              : Text(
                  text!,
                  style: AppTextStyles.regular16pt,
                ),
          const Spacer(),
          SvgPicture.asset("assets/icons/dropdown_icon.svg"),
        ],
      ),
    );
  }
}
