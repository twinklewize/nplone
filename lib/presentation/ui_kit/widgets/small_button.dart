import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:n_plus_one/presentation/ui_kit/colors/colors.dart';
import 'package:n_plus_one/presentation/ui_kit/constants/text_styles.dart';

class SmallButton extends StatelessWidget {
  final String assetName;
  final String text;
  final Function() onPressed;
  final Color color;
  final Color textColor;
  SmallButton({
    Key? key,
    required this.onPressed,
    this.assetName = '',
    this.text = '',
    required this.color,
    this.textColor = AppColors.gray2nd,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () => onPressed(),
          borderRadius: BorderRadius.circular(6),
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 4,
            ),
            height: 32,
            child: Row(
              children: [
                assetName == ''
                    ? SizedBox()
                    : SvgPicture.asset(
                        assetName,
                        color: textColor,
                      ),
                text != '' && assetName != ''
                    ? const SizedBox(width: 4)
                    : const SizedBox(width: 0),
                text != ''
                    ? Text(
                        text,
                        style:
                            AppTextStyles.medium14pt.copyWith(color: textColor),
                      )
                    : const SizedBox(width: 0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
