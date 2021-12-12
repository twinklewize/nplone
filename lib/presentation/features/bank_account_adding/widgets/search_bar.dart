import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:n_plus_one/presentation/ui_kit/colors/colors.dart';
import 'package:n_plus_one/presentation/ui_kit/constants/text_styles.dart';

class SearchBar extends StatelessWidget {
  final Function onSearch;
  const SearchBar({
    Key? key,
    required this.onSearch,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      decoration: BoxDecoration(
        color: AppColors.gray1,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          SvgPicture.asset('assets/icons/search_icon.svg'),
          Expanded(
            child: TextField(
              style: TextStyle(color: AppColors.white),
              onChanged: (value) => onSearch(value),
              decoration: InputDecoration(
                hintText: 'Search',
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
