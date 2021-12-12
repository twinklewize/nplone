import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:n_plus_one/domain/entities/transaction_entity.dart';
import 'package:n_plus_one/presentation/features/spaces_hub/spaces_hub_bloc/spaces_hub_bloc.dart';
import 'package:n_plus_one/presentation/features/spaces_hub/spaces_hub_bloc/spaces_hub_states.dart';
import 'package:n_plus_one/presentation/features/spaces_hub/widgets/single_space_widgets/zones/private_zone/private_zone_history/transaction_details_page.dart';
import 'package:n_plus_one/presentation/ui_kit/colors/colors.dart';

class PrivateZoneHistoryWidget extends StatelessWidget {
  PrivateZoneHistoryWidget({
    Key? key,
  }) : super(key: key);

  // 1 элемент из списка транзакций
  Widget _transactionItemInHistory({
    required BuildContext context,
    required TransactionEntity transaction,
  }) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute<void>(
            builder: (BuildContext context) => TransactionDetailsPage(),
          ),
        );
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        color: AppColors.gray1,
        child: Column(
          children: [
            SizedBox(height: 12),

            Padding(
              padding:
                  EdgeInsets.only(top: 12, left: 12, right: 12, bottom: 12),
              child: Row(
                children: [
                  // contragent's image
                  SizedBox(
                    height: 48,
                    width: 48,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.network(
                        transaction.contragent.imageUrl,
                      ),
                    ),
                  ),
                  SizedBox(width: 11),

                  // contragent name, bank's name and icon
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        transaction.contragent.name,
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 6),
                      Row(
                        children: [
                          SizedBox(
                            height: 16,
                            width: 16,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(2),
                              child: Image.network(
                                transaction
                                    .contragent.bankAccount.bank.imageUrl,
                              ),
                            ),
                          ),
                          SizedBox(width: 6),
                          Text(
                            transaction.contragent.bankAccount.bank.name,
                            style: TextStyle(
                              color: AppColors.gray3,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Spacer(),

                  // transaction amount
                  Text(
                    ((transaction.transactionAmountInDollars > 0)
                            ? "+ "
                            : "- ") +
                        "\$" +
                        ((transaction.transactionAmountInDollars > 0)
                            ? transaction.transactionAmountInDollars
                                .toStringAsFixed(2)
                            : transaction.transactionAmountInDollars
                                .abs()
                                .toStringAsFixed(2)),
                    style: TextStyle(
                      color: transaction.transactionAmountInDollars > 0
                          ? AppColors.green
                          : AppColors.white,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),

            // comments and files and publish button
            Row(
              children: [
                // comments and files
                SizedBox(width: 72),
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

                // publish button
                Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: SizedBox(
                    height: transaction.isPublished ? 32 : 48,
                    width: transaction.isPublished ? 91 : 133,
                    child: Container(
                      decoration: BoxDecoration(
                        color: transaction.isPublished
                            ? AppColors.white.withOpacity(0.1)
                            : AppColors.green20,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/icons/upload.svg',
                            color: transaction.isPublished
                                ? AppColors.gray2nd
                                : AppColors.green,
                          ),
                          SizedBox(width: 4),
                          Text(
                            'Publish',
                            style: TextStyle(
                              color: transaction.isPublished
                                  ? AppColors.gray2nd
                                  : AppColors.green,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
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
