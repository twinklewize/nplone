// Flutter & Dart
import 'package:flutter/material.dart';
import 'package:n_plus_one/core/ui_kit/constants/text_styles.dart';
import 'package:n_plus_one/features/spaces_hub/presentation/widgets/shared_zone_access_widgets/access_card_widget.dart';

class SharedZoneAccessTab extends StatefulWidget {
  SharedZoneAccessTab({Key? key}) : super(key: key);
  bool closedGroupSwitchState = true;
  bool publicSharedZoneSwitchState = true;

  @override
  State<SharedZoneAccessTab> createState() => _SharedZoneAccessTabState();
}

class _SharedZoneAccessTabState extends State<SharedZoneAccessTab> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 16),

            // Title
            Text(
              'Access to Shared Zone',
              style: AppTextStyles.bold20pt,
            ),
            const SizedBox(height: 16),

            // Card with Admins
            AccessCardWidget(
              title: 'Admins',
              text: 'Set up unique access rights to Shared Page for ',
              highlitedText: 'each invited person',
              rightsButtonText: 'Invite and set the rights',
              userAvatars: [
                'https://i.ibb.co/g72brFF/Avatar.jpg',
                'https://i.ibb.co/c63vCrZ/Avatar-1.jpg',
                'https://i.ibb.co/vqrHQC8/Avatar-2.jpg',
                'https://i.ibb.co/qmcRq7S/Avatar-3.jpg',
                'https://i.ibb.co/ZKgHKKb/Avatar-4.jpg',
              ],
              onRightsButton: () {
                Navigator.pushNamed(
                  context,
                  '/admins-and-participants',
                  arguments: {'admins': 'true'},
                );
              },
            ),
            const SizedBox(height: 16),

            // Card with Closed Group
            AccessCardWidget(
              title: 'Closed group',
              text: 'Invite a group of people with the same access settings.',
              rightsButtonText: 'Configure Rights',
              onRightsButton: widget.closedGroupSwitchState
                  ? () {
                      Navigator.pushNamed(context, '/closed-group-rights');
                    }
                  : () {},
              onLinkButton: widget.closedGroupSwitchState ? () {} : () {},
              onSwitch: (value) {
                setState(() {
                  widget.closedGroupSwitchState = value;
                });
              },
              userAvatars: widget.closedGroupSwitchState
                  ? [
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
                    ]
                  : [],
              switchState: widget.closedGroupSwitchState,
              activeState: widget.closedGroupSwitchState,
            ),
            const SizedBox(height: 16),

            // Card with Public Shared Zone
            AccessCardWidget(
              title: 'Public Shared Zone',
              text:
                  'The shared Zone will become unlimitedly public and will be displayed on the N+1 platform in the “Network” area. Everyone will be able to get access to the Shared Page paid or for free: Followers or Subscribers.',
              rightsButtonText: 'Configure Rights',
              onRightsButton: widget.publicSharedZoneSwitchState
                  ? () {
                      //
                    }
                  : () {},
              onLinkButton: widget.publicSharedZoneSwitchState ? () {} : () {},
              onSwitch: (value) {
                setState(() {
                  widget.publicSharedZoneSwitchState = value;
                });
              },
              switchState: widget.publicSharedZoneSwitchState,
              activeState: widget.publicSharedZoneSwitchState,
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
