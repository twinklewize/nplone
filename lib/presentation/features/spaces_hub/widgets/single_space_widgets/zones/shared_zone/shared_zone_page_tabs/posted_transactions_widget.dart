import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:n_plus_one/presentation/features/spaces_hub/spaces_hub_bloc/spaces_hub_bloc.dart';
import 'package:n_plus_one/presentation/features/spaces_hub/spaces_hub_bloc/spaces_hub_states.dart';
import 'package:n_plus_one/presentation/features/spaces_hub/widgets/single_space_widgets/zones/widgets/transaction_item_in_history.dart';

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
          children: [
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
