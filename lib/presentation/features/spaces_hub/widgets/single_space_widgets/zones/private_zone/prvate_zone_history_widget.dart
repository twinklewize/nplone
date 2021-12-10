import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:n_plus_one/domain/entities/bank_account_entity.dart';
import 'package:n_plus_one/domain/entities/transaction_entity.dart';
import 'package:n_plus_one/presentation/features/spaces_hub/spaces_hub_bloc/spaces_hub_bloc.dart';
import 'package:n_plus_one/presentation/features/spaces_hub/spaces_hub_bloc/spaces_hub_states.dart';
import 'package:n_plus_one/presentation/ui_kit/colors/colors.dart';
import 'package:n_plus_one/presentation/ui_kit/widgets/long_filled_button.dart';

class PrivateZoneHistoryWidget extends StatelessWidget {
  PrivateZoneHistoryWidget({
    Key? key,
  }) : super(key: key);

  Widget _transactionItemInHistory({
    required BuildContext context,
    required TransactionEntity transaction,
  }) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Color.fromRGBO(41, 126, 225, 0.1),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 24, left: 12, right: 12),
            child: Row(
              children: [
                SizedBox(
                  height: 48,
                  width: 48,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(transaction.contragent.imageUrl),
                  ),
                ),
                SizedBox(width: 11),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      transaction.contragent.name,
                      style: TextStyle(color: Colors.white),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 16,
                          width: 16,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(2),
                            child: Image.network(
                              transaction.contragent.bankAccount.bank.imageUrl,
                            ),
                          ),
                        ),
                        SizedBox(width: 6),
                        Text(
                          transaction.contragent.bankAccount.bank.name,
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
                Spacer(),
                Text(
                  ((transaction.transactionAmountInDollars > 0) ? "+ " : "") +
                      "\$" +
                      transaction.transactionAmountInDollars.toStringAsFixed(2),
                  style: TextStyle(
                    color: transaction.transactionAmountInDollars > 0
                        ? green
                        : Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              SvgPicture.asset(
                'assets/icons/messages.svg',
                color: Color.fromRGBO(119, 119, 123, 1),
              ),
              SizedBox(width: 4),
              Text(
                transaction.comments.length.toString(),
                style: TextStyle(
                  color: Color.fromRGBO(119, 119, 123, 1),
                ),
              ),
              SizedBox(width: 16),
              SvgPicture.asset(
                'assets/icons/screp.svg',
                color: Color.fromRGBO(119, 119, 123, 1),
              ),
              SizedBox(width: 4),
              Text(
                transaction.comments.length.toString(),
                style: TextStyle(
                  color: Color.fromRGBO(119, 119, 123, 1),
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 20, right: 12),
                child: SizedBox(
                  height: 32,
                  width: 91,
                  child: LongFilledButton(
                    buttonColor: Color.fromRGBO(255, 255, 255, 0.1),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/icons/upload.svg',
                          color: Color.fromRGBO(119, 119, 123, 1),
                        ),
                        SizedBox(width: 4),
                        Text(
                          'Publish',
                          style: TextStyle(
                            color: Color.fromRGBO(119, 119, 123, 1),
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
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
                          _transactionItemInHistory(
                            context: context,
                            transaction:
                                snapshot.bankAccounts[i].transactions[j],
                          ),
                    ],
                  )
                : SizedBox(),
          ),
        ],
      ),
    );
  }
}
