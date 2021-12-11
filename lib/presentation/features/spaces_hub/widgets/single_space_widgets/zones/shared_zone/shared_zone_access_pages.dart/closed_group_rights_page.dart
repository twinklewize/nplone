import 'package:flutter/material.dart';
import 'package:n_plus_one/presentation/features/spaces_hub/widgets/single_space_widgets/zones/shared_zone/widgets/access_card.dart';
import 'package:n_plus_one/presentation/features/spaces_hub/widgets/single_space_widgets/zones/shared_zone/widgets/list_tiles_with_switches.dart';
import 'package:n_plus_one/presentation/ui_kit/colors/colors.dart';
import 'package:n_plus_one/presentation/ui_kit/constants/text_styles.dart';

class ClosedGroupRightsPage extends StatelessWidget {
  const ClosedGroupRightsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.gray1,
      appBar: AppBar(
        title: Text('Closed Group', style: AppTextStyles.medium16pt),
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            AccessCardWithParticipants(
              userAvatars: [
                'https://i.ibb.co/g72brFF/Avatar.jpg',
                'https://i.ibb.co/c63vCrZ/Avatar-1.jpg',
                'https://i.ibb.co/vqrHQC8/Avatar-2.jpg',
                'https://i.ibb.co/qmcRq7S/Avatar-3.jpg',
                'https://i.ibb.co/ZKgHKKb/Avatar-4.jpg',
                'https://i.ibb.co/9v4xPh0/unsplash-d-H-o-QF9w-Y.jpg',
                'https://i.ibb.co/S0jp5Xc/unsplash-g-Doy-Vv5-F4c.jpg',
                'https://i.ibb.co/NLz799g/unsplash-6p8ng-TH1b-UI.jpg',
                'https://i.ibb.co/6R5n7ZP/unsplash-VVEw-JJRRHgk.jpg',
                'https://i.ibb.co/6R5n7ZP/unsplash-VVEw-JJRRHgk.jpg',
                'https://i.ibb.co/S0jp5Xc/unsplash-g-Doy-Vv5-F4c.jpg',
                'https://i.ibb.co/NLz799g/unsplash-6p8ng-TH1b-UI.jpg',
                'https://i.ibb.co/6R5n7ZP/unsplash-VVEw-JJRRHgk.jpg',
                'https://i.ibb.co/6R5n7ZP/unsplash-VVEw-JJRRHgk.jpg',
              ],
              onLinkButton: () {},
              onEditButton: () {},
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 32, 12, 8),
              child: Text('Options', style: AppTextStyles.bold20pt),
            ),
            ListTileWithSwitch(
                text: 'See transactions',
                switchState: false,
                onSwitch: (value) {}),
            ListTileWithSwitch(
                text: 'Post transactions',
                switchState: true,
                onSwitch: (value) {}),
            ListTileWithSwitch(
                text: 'Comment posts and transactions',
                switchState: false,
                onSwitch: (value) {}),
            ListTileWithSwitch(
              text: 'Take part in financial actions',
              switchState: true,
              onSwitch: (value) {},
            ),
            Divider(height: 1, color: AppColors.black),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 32, 12, 8),
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
            MonetizationWidget(
              activeState: true,
              onSwitch: (bool value) {},
              timeSwitchState: 0,
              onTimeSwitch: (int value) {},
              onTextSubmitted: (String value) {},
              text: 'Exclusive materials',
            ),
            MonetizationWidget(
              activeState: true,
              onSwitch: (bool value) {},
              timeSwitchState: 0,
              onTimeSwitch: (int value) {},
              onTextSubmitted: (String value) {},
              text: 'Should Invite friends for free use',
              withDollarSign: false,
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
