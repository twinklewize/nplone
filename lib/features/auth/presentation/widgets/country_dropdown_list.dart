import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:n_plus_one/core/ui_kit/constants/colors.dart';
import 'package:n_plus_one/core/ui_kit/constants/text_styles.dart';

class CountryDropdownList extends StatelessWidget {
  final String? flagEmoji;
  final String? text;
  final String defaultText;

  final Function() onTap;

  const CountryDropdownList({
    Key? key,
    this.flagEmoji,
    this.text,
    required this.defaultText,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      customBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      onTap: () => onTap(),
      child: Container(
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
                  color: flagEmoji == null
                      ? AppColors.white.withOpacity(0.2)
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: flagEmoji == null
                    ? const SizedBox()
                    : Center(
                        child: Text(
                          flagEmoji!,
                          style: TextStyle(
                            fontSize: 24,
                          ),
                        ),
                      ),
              ),
            ),
            const SizedBox(width: 8),
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
      ),
    );
  }
}
