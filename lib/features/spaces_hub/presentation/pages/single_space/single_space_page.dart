import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:n_plus_one/core/ui_kit/constants/colors.dart';
import 'package:n_plus_one/core/ui_kit/constants/text_styles.dart';
import 'package:n_plus_one/features/spaces_hub/domain/entities/bank_account_entity.dart';
import 'package:n_plus_one/features/spaces_hub/domain/entities/space_entity.dart';
import 'tabs/private_zone/tabs/private_zone_accounts_tab.dart';
import 'tabs/private_zone/tabs/private_zone_history/private_zone_history_tab.dart';
import 'tabs/private_zone/tabs/private_zone_more_tab.dart';
import 'tabs/shared_zone/tabs/shared_zone_access/shared_zone_access_tab.dart';
import 'tabs/shared_zone/shared_zone_tab.dart';

enum SegmentedControlState { privateZone, sharedZone }

class SingleSpacePage extends StatefulWidget {
  SingleSpacePage({Key? key, required this.space, required this.bankAccount})
      : super(key: key);

  final SpaceEntity space;
  final BankAccountEntity bankAccount;

  @override
  _SingleSpacePageState createState() => _SingleSpacePageState();
}

class _SingleSpacePageState extends State<SingleSpacePage> {
  // переменная, чтобы хранить состояние segmented control
  SegmentedControlState _segmentedControlGroupValue =
      SegmentedControlState.privateZone;

  // переменная, чтобы хранить состояние Private Zone Tabbar
  int _currentBottomIndexPrivateZone = 0;

  // переменная, чтобы хранить состояние Shared Zone Tabbar
  int _currentBottomIndexSharedZone = 0;

  // метод для изменения состояния Private Zone Tabbar
  void _onPrivateZoneItemTapped(int page) {
    setState(() {
      _currentBottomIndexPrivateZone = page;
    });
  }

  // метод для изменения состояния Shared Zone Tabbar
  void _onSharedZoneItemTapped(int page) {
    setState(() {
      _currentBottomIndexSharedZone = page;
    });
  }

  // метод, возвращающий страницу для текузей комбинации
  // segmened control index + tabbar index
  Widget currentPage(BuildContext context) {
    return _segmentedControlGroupValue == SegmentedControlState.privateZone
        ? _currentBottomIndexPrivateZone == 0
            ? PrivateZoneAccountsTab(
                space: widget.space,
                bankAccount: widget.bankAccount,
              )
            : _currentBottomIndexPrivateZone == 1
                ? PrivateZoneHistoryTab()
                : PrivateZoneMoreTab()
        : _currentBottomIndexSharedZone == 0
            ? SharedZoneTab()
            : SharedZoneAccessTab();
  }

  // метод, возвращающий список нужных кнопок  в Bottom Navigation Bar
  List<BottomNavigationBarItem> currentBottomNavigationBarItems() {
    return _segmentedControlGroupValue == SegmentedControlState.privateZone
        ? [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/grid.svg',
                color: _currentBottomIndexPrivateZone == 0
                    ? AppColors.blue
                    : Colors.white,
              ),
              label: 'Accounts',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.access_time_sharp),
              label: 'History',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz),
              label: 'More',
            ),
          ]
        : [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/grid.svg',
                color: _currentBottomIndexSharedZone == 0
                    ? AppColors.green
                    : Colors.white,
              ),
              label: 'Page',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/access.svg',
                color: _currentBottomIndexSharedZone == 1
                    ? AppColors.green
                    : Colors.white,
              ),
              label: 'Access',
            ),
          ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.gray1,
      appBar: AppBar(
        backgroundColor: AppColors.gray1,
        elevation: 0,
        title: Row(
          children: [
            Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(4)),
                color: Colors.amber,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Image.network(
                  widget.space.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 8),
            Text(
              widget.space.name,
              style: AppTextStyles.medium20pt,
            ),
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
        actions: [
          Badge(
            padding: EdgeInsets.all(4),
            position: BadgePosition.topEnd(top: 4, end: 4),
            badgeColor: AppColors.blue,
            badgeContent:
                Center(child: Text('12', style: AppTextStyles.regular10pt)),
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
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 12,
        backgroundColor: AppColors.gray1,
        selectedItemColor:
            _segmentedControlGroupValue == SegmentedControlState.privateZone
                ? AppColors.blue
                : AppColors.green,
        unselectedItemColor: Colors.white,
        items: currentBottomNavigationBarItems(),
        currentIndex:
            _segmentedControlGroupValue == SegmentedControlState.privateZone
                ? _currentBottomIndexPrivateZone
                : _currentBottomIndexSharedZone,
        onTap: (value) =>
            _segmentedControlGroupValue == SegmentedControlState.privateZone
                ? _onPrivateZoneItemTapped(value)
                : _onSharedZoneItemTapped(value),
      ),
      body: Container(
        color: AppColors.gray1,
        child: SafeArea(
          child: Container(
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 16.0, 0, 0),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // segmented control
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 24,
                    child:
                        CupertinoSlidingSegmentedControl<SegmentedControlState>(
                      thumbColor: AppColors.gray3,
                      children: {
                        SegmentedControlState.privateZone: Text('Private Zone',
                            style: AppTextStyles.regular16pt),
                        SegmentedControlState.sharedZone: Text('Shared Zone',
                            style: AppTextStyles.regular16pt),
                      },
                      groupValue: _segmentedControlGroupValue,
                      onValueChanged: (newValue) {
                        setState(() {
                          _segmentedControlGroupValue = newValue!;
                        });
                      },
                    ),
                  ),
                  const SizedBox(height: 8),
                  currentPage(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
