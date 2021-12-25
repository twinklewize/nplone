import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:n_plus_one/presentation/features/spaces_hub/widgets/shared_zone_access_widgets/list_tile_with_switch_widget.dart';
import 'package:n_plus_one/presentation/features/spaces_hub/widgets/shared_zone_access_widgets/monetization_widget.dart';
import 'package:n_plus_one/presentation/ui_kit/constants/colors.dart';
import 'package:n_plus_one/presentation/ui_kit/constants/text_styles.dart';
import 'package:n_plus_one/presentation/ui_kit/widgets/custom_sircle_avatar.dart';
import 'package:n_plus_one/presentation/ui_kit/widgets/long_filled_button.dart';

class AdminEditPage extends StatelessWidget {
  static const routeName = '/admin-edit';
  AdminEditPage({Key? key}) : super(key: key);

  late final String imageUrl;
  late final String name;

  @override
  Widget build(BuildContext context) {
    if (ModalRoute.of(context) == null) {
      imageUrl = 'imageUrl';
      name = 'username';
    } else {
      final routeArgs =
          ModalRoute.of(context)!.settings.arguments as Map<String, String>;
      imageUrl = routeArgs['imageUrl'] ?? 'imageUrl';
      name = routeArgs['name'] ?? 'username';
    }

    return Scaffold(
      backgroundColor: AppColors.gray1,
      appBar: customAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 16, 12, 8),
              child: Text('Options', style: AppTextStyles.bold20pt),
            ),
            ListTileWithSwitchWidget(
                text: 'See all transactions',
                switchState: true,
                onSwitch: (value) {}),
            ListTileWithSwitchWidget(
                text: 'Post transactions and news',
                switchState: true,
                onSwitch: (value) {}),
            ListTileWithSwitchWidget(
                text: 'Take part in financial actions',
                switchState: false,
                onSwitch: (value) {}),
            ListTileWithSwitchWidget(
                text: 'Comment posts and transactions',
                switchState: true,
                onSwitch: (value) {}),
            ListTileWithSwitchWidget(
                text: 'Edit zone info and Delete Posts',
                switchState: false,
                onSwitch: (value) {}),
            ListTileWithSwitchWidget(
              text: 'Delete/invite new people',
              switchState: true,
              onSwitch: (value) {},
            ),
            Divider(height: 1, color: AppColors.line),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 16, 12, 8),
              child: Text('Monetization', style: AppTextStyles.bold20pt),
            ),
            MonetizationWidget(
              activeState: true,
              onSwitch: (bool value) {},
              timeSwitchState: 0,
              onTimeSwitch: (int value) {},
              onTextSubmitted: (String value) {},
              text: 'Subscription fee',
            ),
            const SizedBox(height: 32),
            dismissButton(() {}),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  Padding dismissButton(Function() onPressed) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: LongFilledButton(
        buttonColor: AppColors.red.withOpacity(0.2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/icons/dismiss_icon.svg',
              color: AppColors.red,
            ),
            const SizedBox(width: 8),
            Text(
              'Dismiss $name',
              style: AppTextStyles.medium14pt.copyWith(
                color: AppColors.red,
              ),
            ),
          ],
        ),
        onPressed: onPressed,
      ),
    );
  }

  AppBar customAppBar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomCircleAvatar(imageUrl: imageUrl),
          const SizedBox(width: 8),
          Text(name, style: AppTextStyles.medium16pt),
        ],
      ),
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: AppColors.white,
        ),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      backgroundColor: AppColors.gray1,
      elevation: 0,
    );
  }
}
