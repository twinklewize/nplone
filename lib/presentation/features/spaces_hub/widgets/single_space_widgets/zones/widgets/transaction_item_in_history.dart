import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:n_plus_one/domain/entities/transaction_entity.dart';
import 'package:n_plus_one/presentation/features/spaces_hub/widgets/single_space_widgets/zones/private_zone/private_zone_history/transaction_details_page.dart';
import 'package:n_plus_one/presentation/features/spaces_hub/widgets/single_space_widgets/zones/shared_zone/shared_zone_page_tabs/description_widget.dart';
import 'package:n_plus_one/presentation/ui_kit/colors/colors.dart';

class TransactionItemInHistory extends StatelessWidget {
  const TransactionItemInHistory({
    Key? key,
    required this.transaction,
  }) : super(key: key);

  final TransactionEntity transaction;

  // Форматирование числа
  String _transactionToString(double number) {
    String transactionString;
    var formatter = NumberFormat('#,##0.00');
    number < 0 ? transactionString = '- \$' : transactionString = '+ \$';
    transactionString = transactionString + formatter.format(number.abs());
    return transactionString;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(color: AppColors.black, height: 1),
        Material(
          color: AppColors.gray1,
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => TransactionDetailsPage(),
                ),
              );
            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  SizedBox(height: 20),

                  Padding(
                    padding: EdgeInsets.only(
                        top: 0, left: 12, right: 12, bottom: 12),
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
                          _transactionToString(
                              transaction.transactionAmountInDollars),
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
                        // child: SizedBox(
                        //   height: transaction.isPublished ? 32 : 48,
                        //   width: transaction.isPublished ? 91 : 133,
                        //   child: Container(
                        //     decoration: BoxDecoration(
                        //       color: transaction.isPublished
                        //           ? AppColors.white.withOpacity(0.1)
                        //           : AppColors.green20,
                        //       borderRadius: BorderRadius.circular(6),
                        //     ),
                        //     child: Row(
                        //       mainAxisAlignment: MainAxisAlignment.center,
                        //       children: [
                        //         SvgPicture.asset(
                        //           'assets/icons/upload.svg',
                        //           color: transaction.isPublished
                        //               ? AppColors.gray2nd
                        //               : AppColors.green,
                        //         ),
                        //         SizedBox(width: 4),
                        //         Text(
                        //           'Publish',
                        //           style: TextStyle(
                        //             color: transaction.isPublished
                        //                 ? AppColors.gray2nd
                        //                 : AppColors.green,
                        //           ),
                        //         ),
                        //       ],
                        //     ),
                        //   ),
                        // ),
                        child: transaction.isPublished
                            ? SmallButton(
                                onPressed: () {},
                                assetName: 'assets/icons/upload.svg',
                                text: 'Publish',
                              )
                            : SmallButton(
                                onPressed: () {},
                                assetName: 'assets/icons/edit_icon.svg',
                                text: 'Edit',
                              ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
