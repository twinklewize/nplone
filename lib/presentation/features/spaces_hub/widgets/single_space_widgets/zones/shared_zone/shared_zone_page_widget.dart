import 'package:flutter/material.dart';
import 'package:n_plus_one/presentation/ui_kit/colors/colors.dart';

import 'shared_zone_page_tabs/description_widget.dart';
import 'shared_zone_page_tabs/news_widget.dart';
import 'shared_zone_page_tabs/posted_transactions_widget.dart';

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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TabBar(
                    isScrollable: true,
                    unselectedLabelColor: AppColors.gray2,
                    indicatorColor: AppColors.green,
                    indicatorWeight: 4,
                    indicatorSize: TabBarIndicatorSize.label,
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
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: [
                  NewsWidget(),
                  PostedTransactionsWidget(),
                  DescriptionWidget(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
