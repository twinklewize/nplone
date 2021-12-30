import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:n_plus_one/core/ui_kit/constants/colors.dart';
import 'package:n_plus_one/core/ui_kit/constants/text_styles.dart';
import 'package:n_plus_one/core/ui_kit/widgets/search_bar.dart';
import 'package:n_plus_one/core/ui_kit/widgets/two_buttons.dart';
import 'package:n_plus_one/features/spaces_hub/presentation/bloc/spaces_hub_bloc/spaces_hub_bloc.dart';
import 'package:n_plus_one/features/spaces_hub/presentation/bloc/spaces_hub_bloc/spaces_hub_states.dart';
import 'package:n_plus_one/features/spaces_hub/presentation/widgets/transactions_history_widgets/transaction_item_in_history.dart';

class PostedTransactionsTab extends StatelessWidget {
  PostedTransactionsTab({
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
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: TwoButtons(
                icon_1: 'assets/icons/add_photo_icon.svg',
                text_1: 'Add Receipt',
                icon_2: 'assets/icons/vertical_more_icon.svg',
                text_2: 'Actions',
                onPressed_1: () {},
                onPressed_2: () {
                  Navigator.of(context).pushNamed('/shared-zone-actions');
                },
              ),
            ),

            // Search Bar
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: SearchBar(
                onSearch: (value) {},
                hintText: 'Search',
              ),
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
}
