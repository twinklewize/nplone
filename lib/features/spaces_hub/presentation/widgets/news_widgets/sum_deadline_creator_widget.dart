import 'package:flutter/material.dart';
import 'package:n_plus_one/core/ui_kit/constants/colors.dart';
import 'package:n_plus_one/core/ui_kit/constants/text_styles.dart';
import 'package:n_plus_one/core/utils/text_formatter.dart';

class SumDeadlineCreatorWidget extends StatelessWidget {
  final double sum;
  final String date;
  final String creator;
  const SumDeadlineCreatorWidget({
    Key? key,
    required this.sum,
    required this.date,
    required this.creator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = (MediaQuery.of(context).size.width - (2 * 12 + 2 * 16)) / 3;
    return Row(
      children: [
        informationColumn(width, 'Sum:', TextFormatter.sumToString(sum)),
        const SizedBox(width: 16),
        informationColumn(width, 'Deadline:', date),
        const SizedBox(width: 16),
        informationColumn(width, 'Created by:', creator),
      ],
    );
  }

  Widget informationColumn(double width, String title, String text) {
    return SizedBox(
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppTextStyles.regular12pt.copyWith(color: AppColors.gray3),
          ),
          const SizedBox(height: 4),
          Text(
            text,
            style: AppTextStyles.regular12pt,
          ),
        ],
      ),
    );
  }
}
