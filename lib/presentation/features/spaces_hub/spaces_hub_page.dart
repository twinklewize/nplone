import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:n_plus_one/presentation/features/spaces_hub/widgets/all_bank_accounts_widgets/membership_spaces_widget.dart';
import 'package:n_plus_one/presentation/features/spaces_hub/widgets/all_bank_accounts_widgets/my_spaces_widget.dart';
import 'package:n_plus_one/presentation/ui_kit/colors/colors.dart';

enum SegmentedControlState { mySpaces, membership }

class SpacesHubPage extends StatefulWidget {
  const SpacesHubPage({Key? key}) : super(key: key);

  @override
  State<SpacesHubPage> createState() => _SpacesHubPageState();
}

class _SpacesHubPageState extends State<SpacesHubPage> {
  SegmentedControlState segmentedControlGroupValue =
      SegmentedControlState.mySpaces;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: background_black,
        elevation: 0,
        leading: Icon(Icons.search, color: Color.fromRGBO(193, 193, 193, 1)),
        actions: [
          Badge(
            padding: EdgeInsets.all(4),
            position: BadgePosition.topEnd(top: 4, end: 4),
            badgeColor: blue,
            badgeContent: Center(
                child: Text('12',
                    style: TextStyle(color: Colors.white, fontSize: 10))),
            child: SizedBox(
              width: 48,
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://24smi.org/public/media/celebrity/2019/04/19/kjxlkwnhrdr9-artemij-lebedev.jpg'),
                radius: 16.0,
              ),
            ),
          ),
        ],
      ),
      body: Container(
        color: background_black,
        child: SafeArea(
          child: Container(
            child: Padding(
              padding: EdgeInsets.fromLTRB(12.0, 16.0, 12.0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // segmented control
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child:
                        CupertinoSlidingSegmentedControl<SegmentedControlState>(
                      thumbColor: Color.fromRGBO(67, 69, 70, 1),
                      children: {
                        SegmentedControlState.mySpaces: Text('My spaces',
                            style: TextStyle(color: Colors.white)),
                        SegmentedControlState.membership: Text('Membership',
                            style: TextStyle(color: Colors.white)),
                      },
                      groupValue: segmentedControlGroupValue,
                      onValueChanged: (newValue) {
                        setState(() {
                          segmentedControlGroupValue = newValue!;
                        });
                      },
                    ),
                  ),
                  segmentedControlGroupValue == SegmentedControlState.mySpaces
                      ? MySpacesWidget()
                      : MembershipSpacesWidget(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
