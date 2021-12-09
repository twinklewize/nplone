import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:n_plus_one/presentation/ui_kit/colors/colors.dart';
import 'package:n_plus_one/presentation/ui_kit/constants/text_styles.dart';

class ContainerWithCheckbox extends StatefulWidget {
  final bool check;
  final String text;

  ContainerWithCheckbox({
    this.check = false,
    required this.text,
  });

  @override
  State<ContainerWithCheckbox> createState() => _ContainerWithCheckboxState();
}

class _ContainerWithCheckboxState extends State<ContainerWithCheckbox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      decoration: BoxDecoration(
        color: widget.check
            ? AppColors.blue.withOpacity(0.25)
            : AppColors.white.withOpacity(0.2),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          widget.check
              ? SvgPicture.asset("assets/icons/checkbox_true_icon.svg")
              : SvgPicture.asset("assets/icons/checkbox_false_icon.svg"),
          Text(
            widget.text,
            style: AppTextStyles.regular16pt,
          ),
        ],
      ),
    );
  }
}
