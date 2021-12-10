import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:n_plus_one/domain/entities/bank_account_entity.dart';
import 'package:n_plus_one/domain/entities/space_entity.dart';
import 'package:n_plus_one/presentation/features/spaces_hub/spaces_hub_bloc/spaces_hub_bloc.dart';
import 'package:n_plus_one/presentation/features/spaces_hub/spaces_hub_bloc/spaces_hub_states.dart';
import 'package:n_plus_one/presentation/features/spaces_hub/widgets/single_space_widgets/zones/private_zone/private_zone_accouts_widget.dart';
import 'package:n_plus_one/presentation/features/spaces_hub/widgets/single_space_widgets/zones/private_zone/prvate_zone_history_widget.dart';
import 'package:n_plus_one/presentation/features/spaces_hub/widgets/single_space_widgets/zones/private_zone/prvate_zone_more_widget.dart';
import 'package:n_plus_one/presentation/features/spaces_hub/widgets/single_space_widgets/zones/shared_zone/shared_zone_access_widget.dart';
import 'package:n_plus_one/presentation/features/spaces_hub/widgets/single_space_widgets/zones/shared_zone/shared_zone_page_widget.dart';
import 'package:n_plus_one/presentation/ui_kit/colors/colors.dart';

enum SegmentedControlState { privateZone, sharedZone }

class SingleSpacePage extends StatefulWidget {
  SingleSpacePage({Key? key, required this.space, required this.bankAccount})
      : super(key: key);

  SpaceEntity space;
  BankAccountEntity bankAccount;

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
            ? PrivateZoneAccountsWidget(
                space: widget.space,
                bankAccount: widget.bankAccount,
              )
            : _currentBottomIndexPrivateZone == 1
                ? PrivateZoneHistoryWidget()
                : PrivateZoneMoreWidget()
        : _currentBottomIndexSharedZone == 0
            ? SharedZonePageWidget()
            : SharedZoneAccessWidget();
  }

  // метод, возвращающий список нужных кнопок  в Bottom Navigation Bar
  List<BottomNavigationBarItem> currentBottomNavigationBarItems() {
    return _segmentedControlGroupValue == SegmentedControlState.privateZone
        ? [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/grid.svg',
                color:
                    _currentBottomIndexPrivateZone == 0 ? blue : Colors.white,
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
                color:
                    _currentBottomIndexSharedZone == 0 ? green : Colors.white,
              ),
              label: 'Page',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/access.svg',
                color:
                    _currentBottomIndexSharedZone == 1 ? green : Colors.white,
              ),
              label: 'Access',
            ),
          ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background_black,
      appBar: AppBar(
        backgroundColor: background_black,
        elevation: 0,
        leading: Row(
          children: [
            SizedBox(width: 12),
            InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Icon(
                Icons.arrow_back_ios,
                color: Color.fromRGBO(193, 193, 193, 1),
              ),
            ),
            SizedBox(width: 12),
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
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
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
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 12,
        backgroundColor: background_black,
        selectedItemColor:
            _segmentedControlGroupValue == SegmentedControlState.privateZone
                ? blue
                : green,
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
        color: background_black,
        child: SafeArea(
          child: Container(
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 16.0, 0, 0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // segmented control
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: CupertinoSlidingSegmentedControl<
                          SegmentedControlState>(
                        thumbColor: Color.fromRGBO(67, 69, 70, 1),
                        children: {
                          SegmentedControlState.privateZone: Text(
                              'Private Zone',
                              style: TextStyle(color: Colors.white)),
                          SegmentedControlState.sharedZone: Text('Shared Zone',
                              style: TextStyle(color: Colors.white)),
                        },
                        groupValue: _segmentedControlGroupValue,
                        onValueChanged: (newValue) {
                          setState(() {
                            _segmentedControlGroupValue = newValue!;
                          });
                        },
                      ),
                    ),
                    currentPage(context),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
