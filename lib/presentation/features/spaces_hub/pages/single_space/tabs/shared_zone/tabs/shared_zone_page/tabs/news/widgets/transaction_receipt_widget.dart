import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:n_plus_one/core/utils/text_formatter.dart';
import 'package:n_plus_one/presentation/ui_kit/colors/colors.dart';
import 'package:n_plus_one/presentation/ui_kit/constants/text_styles.dart';

class TransactionReceiptWidget extends StatelessWidget {
  final double transaction;
  const TransactionReceiptWidget({
    Key? key,
    required this.transaction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color color = transaction < 0 ? AppColors.red : AppColors.green;
    return Container(
      width: MediaQuery.of(context).size.width - 24,
      padding: EdgeInsets.all(8),
      height: 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: color.withOpacity(0.2))),
      child: Row(
        children: [
          SvgPicture.asset(
            'assets/icons/screp.svg',
            color: color,
          ),
          SizedBox(width: 8),
          Text(
            'Transaction receipt:',
            style: AppTextStyles.regular14pt.copyWith(color: color),
          ),
          SizedBox(width: 8),
          Text(
            TextFormatter.transactionToString(transaction),
            style: AppTextStyles.bold14pt.copyWith(color: color),
          ),
        ],
      ),
    );
  }
}
