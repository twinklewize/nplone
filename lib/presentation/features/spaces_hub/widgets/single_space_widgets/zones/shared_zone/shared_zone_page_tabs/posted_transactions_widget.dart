import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:n_plus_one/presentation/features/spaces_hub/spaces_hub_bloc/spaces_hub_bloc.dart';
import 'package:n_plus_one/presentation/features/spaces_hub/spaces_hub_bloc/spaces_hub_states.dart';
import 'package:n_plus_one/presentation/features/spaces_hub/widgets/single_space_widgets/zones/widgets/transaction_item_in_history.dart';
import 'package:n_plus_one/presentation/ui_kit/colors/colors.dart';
import 'package:n_plus_one/presentation/ui_kit/constants/text_styles.dart';
import 'package:n_plus_one/presentation/ui_kit/widgets/long_filled_button.dart';
import 'package:n_plus_one/presentation/ui_kit/widgets/search_bar.dart';

import 'news_shared_zone/actions_page.dart';

class PostedTransactionsWidget extends StatelessWidget {
  PostedTransactionsWidget({
    Key? key,
  }) : super(key: key);

  // 1 элемент из списка транзакций

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Buttons
            buttons(context, () {}),
            // Search Bar
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: SearchBar(onSearch: (value) {}),
            ),

            // Date
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              child: Text(
                'Today, 12 Dec',
                style: AppTextStyles.regular14pt
                    .copyWith(color: AppColors.gray2nd),
              ),
            ),

            //Transactions
            BlocBuilder<SpacesHubBloc, SpacesHubState>(
              builder: (context, snapshot) => snapshot is BankAccountsLoaded
                  ? Column(
                      children: [
                        for (var i = 0; i < snapshot.bankAccounts.length; i++)
                          for (var j = 0;
                              j < snapshot.bankAccounts[i].transactions.length;
                              j++)
                            !snapshot
                                    .bankAccounts[i].transactions[j].isPublished
                                ? TransactionItemInHistory(
                                    transaction: snapshot
                                        .bankAccounts[i].transactions[j],
                                  )
                                : SizedBox(),
                      ],
                    )
                  : SizedBox(),
            ),
          ],
        ),
      ),
    );
  }

  Widget buttons(BuildContext context, Function() onAddReceipt) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 16, 0, 8),
      child: Column(
        children: [
          Row(
            children: [
              const SizedBox(width: 12),
              // Add News Button
              Expanded(
                child: LongFilledButton(
                  buttonColor: AppColors.white10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/icons/add_photo_icon.svg'),
                      const SizedBox(width: 8),
                      Text('Add Receipt', style: AppTextStyles.medium14pt)
                    ],
                  ),
                  onPressed: () => onAddReceipt(),
                  height: 40,
                ),
              ),
              const SizedBox(width: 12),
              // Actions Button
              Expanded(
                child: LongFilledButton(
                  buttonColor: AppColors.white10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        child: SvgPicture.asset(
                            'assets/icons/vertical_more_icon.svg'),
                      ),
                      const SizedBox(width: 8),
                      Text('Actions', style: AppTextStyles.medium14pt)
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ActionsPage()),
                    );
                  },
                  height: 40,
                ),
              ),
              const SizedBox(width: 12),
            ],
          ),
        ],
      ),
    );
  }
}
