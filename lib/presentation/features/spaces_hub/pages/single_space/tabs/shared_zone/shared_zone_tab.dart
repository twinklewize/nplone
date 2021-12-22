import 'package:flutter/material.dart';
import 'package:n_plus_one/presentation/ui_kit/colors/colors.dart';

import 'tabs/shared_zone_page/tabs/description/description_tab.dart';
import 'tabs/shared_zone_page/tabs/news/news_tab.dart';
import 'tabs/shared_zone_page/tabs/posted_transactions_tab.dart';

class SharedZoneTab extends StatefulWidget {
  SharedZoneTab({Key? key}) : super(key: key);

  @override
  State<SharedZoneTab> createState() => _SharedZoneTabState();
}

class _SharedZoneTabState extends State<SharedZoneTab>
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
                Divider(height: 1, color: AppColors.white.withOpacity(0.1)),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: [
                NewsTab(),
                PostedTransactionsTab(),
                DescriptionTab(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
