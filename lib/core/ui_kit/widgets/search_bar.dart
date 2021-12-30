import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:n_plus_one/core/ui_kit/constants/colors.dart';
import 'package:n_plus_one/core/ui_kit/constants/text_styles.dart';

class SearchBar extends StatelessWidget {
  final Function onSearch;
  final String hintText;
  const SearchBar({
    Key? key,
    required this.onSearch,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: AppColors.white.withOpacity(0.25),
          )),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/icons/search_icon.svg',
            color: AppColors.white.withOpacity(0.5),
          ),
          Expanded(
            child: TextField(
              style: AppTextStyles.regular16pt,
              onChanged: (value) => onSearch(value),
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: AppTextStyles.regular16pt.copyWith(
                  color: AppColors.white.withOpacity(0.5),
                ),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
