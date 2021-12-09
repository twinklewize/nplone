import 'package:flutter/material.dart';

class SharedZonePageWidget extends StatefulWidget {
  SharedZonePageWidget({Key? key}) : super(key: key);

  @override
  State<SharedZonePageWidget> createState() => _SharedZonePageWidgetState();
}

class _SharedZonePageWidgetState extends State<SharedZonePageWidget>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Container(
              // height: 50,
              width: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: TabBar(
                      unselectedLabelColor: Colors.white,
                      labelColor: Colors.black,
                      indicatorColor: Colors.white,
                      indicatorWeight: 2,
                      indicator: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      controller: tabController,
                      tabs: [
                        Tab(
                          text: 'News',
                        ),
                        Tab(
                          text: 'Posted Transactions',
                        ),
                        Tab(
                          text: 'Description',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: [
                  Text('Tab 1'),
                  Text('Tab2'),
                  Text('Tab3'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
