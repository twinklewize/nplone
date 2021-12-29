// Flutter & Dart
import 'package:flutter/material.dart';
import 'package:n_plus_one/core/ui_kit/constants/colors.dart';
import 'package:n_plus_one/core/ui_kit/constants/text_styles.dart';
import 'package:n_plus_one/features/spaces_hub/presentation/widgets/shared_zone_access_widgets/access_card_with_participants_widget.dart';
import 'package:n_plus_one/features/spaces_hub/presentation/widgets/shared_zone_access_widgets/list_tile_with_switch_widget.dart';
import 'package:n_plus_one/features/spaces_hub/presentation/widgets/shared_zone_access_widgets/monetization_widget.dart';

class ClosedGroupRightsPage extends StatelessWidget {
  static const routeName = '/closed-group-rights';
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
        backgroundColor: AppColors.gray1,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            AccessCardWithParticipantsWidget(
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
              onViewAllButton: () {
                Navigator.pushNamed(
                  context,
                  '/admins-and-participants',
                  arguments: {'admins': 'false'},
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 32, 12, 8),
              child: Text('Options', style: AppTextStyles.bold20pt),
            ),
            ListTileWithSwitchWidget(
                text: 'See transactions',
                switchState: false,
                onSwitch: (value) {}),
            ListTileWithSwitchWidget(
                text: 'Post transactions',
                switchState: true,
                onSwitch: (value) {}),
            ListTileWithSwitchWidget(
                text: 'Comment posts and transactions',
                switchState: false,
                onSwitch: (value) {}),
            ListTileWithSwitchWidget(
              text: 'Take part in financial actions',
              switchState: true,
              onSwitch: (value) {},
            ),
            Divider(height: 1, color: AppColors.line),
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
