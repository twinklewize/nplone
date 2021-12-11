import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:n_plus_one/presentation/features/spaces_hub/widgets/single_space_widgets/zones/shared_zone/shared_zone_access_pages.dart/admins_page.dart';
import 'package:n_plus_one/presentation/ui_kit/colors/colors.dart';
import 'package:n_plus_one/presentation/ui_kit/constants/text_styles.dart';
import 'package:n_plus_one/presentation/ui_kit/widgets/custom_sircle_avatar.dart';
import 'package:n_plus_one/presentation/ui_kit/widgets/long_filled_button.dart';

import 'shared_zone_access_pages.dart/closed_group_rights_page.dart';
import 'widgets/access_card.dart';

class SharedZoneAccessWidget extends StatefulWidget {
  SharedZoneAccessWidget({Key? key}) : super(key: key);
  bool closedGroupSwitchState = true;
  bool publicSharedZoneSwitchState = true;

  @override
  State<SharedZoneAccessWidget> createState() => _SharedZoneAccessWidgetState();
}

class _SharedZoneAccessWidgetState extends State<SharedZoneAccessWidget> {
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
            AccessCard(
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
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AdminsPage()),
                );
              },
            ),
            const SizedBox(height: 16),

            // Card with Closed Group
            AccessCard(
              title: 'Closed group',
              text: 'Invite a group of people with the same access settings.',
              rightsButtonText: 'Configure Rights',
              onRightsButton: widget.closedGroupSwitchState
                  ? () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ClosedGroupRightsPage(),
                        ),
                      );
                    }
                  : () {},
              onLinkButton: widget.closedGroupSwitchState
                  ? () {
                      // TODO: Function
                    }
                  : () {},
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
            AccessCard(
              title: 'Public Shared Zone',
              text:
                  'The shared Zone will become unlimitedly public and will be displayed on the N+1 platform in the “Network” area. Everyone will be able to get access to the Shared Page paid or for free: Followers or Subscribers.',
              rightsButtonText: 'Configure Rights',
              onRightsButton: widget.publicSharedZoneSwitchState
                  ? () {
                      // TODO: Function
                    }
                  : () {},
              onLinkButton: widget.publicSharedZoneSwitchState
                  ? () {
                      // TODO: Function
                    }
                  : () {},
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
