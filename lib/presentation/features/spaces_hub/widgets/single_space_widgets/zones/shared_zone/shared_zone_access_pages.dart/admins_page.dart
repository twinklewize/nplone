import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:n_plus_one/presentation/ui_kit/colors/colors.dart';
import 'package:n_plus_one/presentation/ui_kit/constants/text_styles.dart';
import 'package:n_plus_one/presentation/ui_kit/widgets/long_filled_button.dart';
import 'package:n_plus_one/presentation/ui_kit/widgets/search_bar.dart';

class AdminsPage extends StatelessWidget {
  const AdminsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.gray1,
      appBar: AppBar(
        title: Text('Admins', style: AppTextStyles.medium16pt),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: AppColors.white,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: background_black,
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: SearchBar(onSearch: () {}),
          ),
          const SizedBox(height: 24),
          AdminsButtons(),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}

class AdminsButtons extends StatelessWidget {
  const AdminsButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 12),
        Expanded(
          child: LongFilledButton(
            buttonColor: AppColors.green20,
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
            onPressed: () {},
            height: 40,
          ),
        ),
        SizedBox(width: 8),
        LongFilledButton(
          buttonColor: AppColors.green20,
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
          onPressed: () {},
          height: 40,
        ),
        SizedBox(width: 12),
      ],
    );
  }
}
