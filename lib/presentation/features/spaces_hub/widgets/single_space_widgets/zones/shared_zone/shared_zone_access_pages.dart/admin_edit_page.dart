import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:n_plus_one/presentation/features/spaces_hub/widgets/single_space_widgets/zones/shared_zone/widgets/list_tiles_with_switches.dart';
import 'package:n_plus_one/presentation/ui_kit/colors/colors.dart';
import 'package:n_plus_one/presentation/ui_kit/constants/text_styles.dart';
import 'package:n_plus_one/presentation/ui_kit/widgets/custom_sircle_avatar.dart';

class AdminEditPage extends StatelessWidget {
  const AdminEditPage({Key? key, required this.imageUrl, required this.name})
      : super(key: key);
  final String imageUrl;
  final String name;

  @override
  Widget build(BuildContext context) {
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
            ListTileWithSwitch(
                text: 'See all transactions',
                switchState: true,
                onSwitch: (value) {}),
            ListTileWithSwitch(
                text: 'Post transactions and news',
                switchState: true,
                onSwitch: (value) {}),
            ListTileWithSwitch(
                text: 'Take part in financial actions',
                switchState: false,
                onSwitch: (value) {}),
            ListTileWithSwitch(
                text: 'Comment posts and transactions',
                switchState: true,
                onSwitch: (value) {}),
            ListTileWithSwitch(
                text: 'Edit zone info and Delete Posts',
                switchState: false,
                onSwitch: (value) {}),
            ListTileWithSwitch(
              text: 'Delete/invite new people',
              switchState: true,
              onSwitch: (value) {},
            ),
            Divider(height: 1, color: AppColors.black),
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
            const SizedBox(height: 16),
          ],
        ),
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
      backgroundColor: background_black,
      elevation: 0,
    );
  }
}
