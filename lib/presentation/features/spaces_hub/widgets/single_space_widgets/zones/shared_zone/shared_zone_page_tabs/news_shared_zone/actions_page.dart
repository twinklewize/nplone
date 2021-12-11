import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:n_plus_one/presentation/ui_kit/colors/colors.dart';
import 'package:n_plus_one/presentation/ui_kit/constants/text_styles.dart';
import 'package:n_plus_one/presentation/ui_kit/widgets/long_filled_button.dart';

class ActionsPage extends StatelessWidget {
  const ActionsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.gray1,
      appBar: AppBar(
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
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: Column(
          children: [
            actionsButton(
                context, 'split', 'Split transaction(s)', true, () {}),
            SizedBox(height: 8),
            actionsButton(context, 'donate', 'Collect money from participant',
                true, () {}),
            SizedBox(height: 8),
            actionsButton(context, 'plus', 'Create invoice', true, () {}),
            SizedBox(height: 8),
            actionsButton(context, 'auction', 'Start auction', true, () {}),
            SizedBox(height: 8),
            actionsButton(
                context, 'doc', 'Publish financial statement', false, () {}),
            SizedBox(height: 8),
            actionsButton(
                context, 'statistic', 'Publish statistic', false, () {}),
            SizedBox(height: 8),
            actionsButton(
                context, 'requiring_solutions', 'Start poll', false, () {}),
          ],
        ),
      ),
    );
  }

  LongFilledButton actionsButton(
    BuildContext context,
    String icon,
    String text,
    bool pro,
    Function() function,
  ) {
    return LongFilledButton(
      buttonColor: AppColors.white10,
      child: Row(
        children: [
          SizedBox(width: 16),
          SvgPicture.asset(
            'assets/icons/actions/$icon.svg',
            color: AppColors.green,
          ),
          SizedBox(width: 16),
          SizedBox(
            width: MediaQuery.of(context).size.width - (68 + 72 + 8),
            child: Text(
              text,
              style: AppTextStyles.medium16pt,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Spacer(),
          pro ? Image.asset('assets/icons/pro_icon.png') : const SizedBox(),
          const SizedBox(width: 16),
        ],
      ),
      onPressed: () => function(),
    );
  }
}
