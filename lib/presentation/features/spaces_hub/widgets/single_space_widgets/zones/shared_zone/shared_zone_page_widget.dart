import 'package:flutter/material.dart';
import 'package:n_plus_one/presentation/ui_kit/colors/colors.dart';

import 'shared_zone_page_tabs/description_widget.dart';
import 'shared_zone_page_tabs/news_shared_zone/news_widget.dart';
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
    return Expanded(
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TabBar(
                  isScrollable: true,
                  unselectedLabelColor: AppColors.gray2nd,
                  indicatorColor: AppColors.green,
                  indicatorWeight: 4,
                  indicatorSize: TabBarIndicatorSize.label,
                  controller: tabController,
                  tabs: [
                    Tab(
                      text: 'News',
                      height: 48,
                    ),
                    Tab(
                      text: 'Posted Transactions',
                      height: 48,
                    ),
                    Tab(
                      text: 'Description',
                      height: 48,
                    ),
                  ],
                ),
                Divider(height: 1, color: AppColors.white10),
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
    );
  }
}
