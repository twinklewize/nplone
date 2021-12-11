import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:n_plus_one/presentation/ui_kit/colors/colors.dart';
import 'package:n_plus_one/presentation/ui_kit/constants/text_styles.dart';
import 'package:n_plus_one/presentation/ui_kit/widgets/long_filled_button.dart';

class NewsWidget extends StatelessWidget {
  const NewsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          NewsCard(
            title: 'January News @!',
            text:
                'Kitchen is ready. The guidelines were to create a modern and minimalist design that balances beauty and functionality.',
            imageURL: 'https://i.ibb.co/X5kQP9T/apartment-image.png',
            likeCount: 43,
            messageCount: 13,
            shareCount: 6,
            viewCount: 1123,
            transaction: 20000.00,
          ),
        ],
      ),
    );
  }
}

class NewsCard extends StatelessWidget {
  final String title;
  final String text;
  final String imageURL;
  final double transaction;
  final int likeCount;
  final int messageCount;
  final int shareCount;
  final int viewCount;

  const NewsCard({
    Key? key,
    required this.title,
    required this.text,
    required this.imageURL,
    required this.likeCount,
    required this.messageCount,
    required this.shareCount,
    required this.viewCount,
    this.transaction = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: AppColors.gray1,
      child: Column(
        children: [
          SizedBox(height: 24),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  color: AppColors.gray3,
                  width: 112,
                  height: 84,
                  child: Image.network(imageURL),
                ),
              ),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width - (3 * 12 + 112),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          title,
                          style: AppTextStyles.bold16pt,
                        ),
                        Icon(Icons.more_horiz, color: AppColors.gray3),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  SizedBox(
                    width: MediaQuery.of(context).size.width - (3 * 12 + 112),
                    height: 48,
                    child: Text(
                      text,
                      maxLines: 3,
                      style: AppTextStyles.regular12pt
                          .copyWith(color: AppColors.gray2),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ],
          ),

          // Transaction Receipt
          transaction != 0
              ? Column(
                  children: [
                    const SizedBox(height: 16),
                    TransactionReceiptWidget(transaction: transaction),
                  ],
                )
              : const SizedBox(),

          //sum, Deadlines and Creator
          Column(
            children: [
              const SizedBox(height: 16),
              SumDeadlineCreatorWidget(),
            ],
          ),

          Column(
            children: [
              const SizedBox(height: 16),
              LongFilledButton(
                buttonColor: AppColors.green20,
                onPressed: () {},
                child: Text(
                  'Bet',
                  style: AppTextStyles.medium14pt.copyWith(
                    color: AppColors.green,
                  ),
                ),
                height: 40,
              ),
            ],
          ),

          // Voting
          Column(
            children: [
              const SizedBox(height: 16),
              VotingButtons(),
            ],
          ),

          const SizedBox(height: 16),

          // Карточки с количеством лайков, сообщений и т.п
          InformationCards(
              likeCount: likeCount,
              messageCount: messageCount,
              shareCount: shareCount,
              viewCount: viewCount),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}

class VotingButtons extends StatelessWidget {
  const VotingButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: LongFilledButton(
            buttonColor: AppColors.red20,
            onPressed: () {},
            child: Text(
              'Vote Against',
              style: AppTextStyles.medium14pt.copyWith(
                color: AppColors.red,
              ),
            ),
            height: 40,
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: LongFilledButton(
            buttonColor: AppColors.green20,
            onPressed: () {},
            child: Text(
              'Vote for Confirm',
              style: AppTextStyles.medium14pt.copyWith(
                color: AppColors.green,
              ),
            ),
            height: 40,
          ),
        ),
      ],
    );
  }
}

class SumDeadlineCreatorWidget extends StatelessWidget {
  const SumDeadlineCreatorWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = (MediaQuery.of(context).size.width - (2 * 12 + 2 * 16)) / 3;
    return Row(
      children: [
        informationColumn(width, 'Sum:', '\$ 1,530'),
        const SizedBox(width: 16),
        informationColumn(width, 'Deadline:', '2 Feb 2022'),
        const SizedBox(width: 16),
        informationColumn(width, 'Created by:', 'Anton Schmidt'),
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

class TransactionReceiptWidget extends StatelessWidget {
  final double transaction;
  const TransactionReceiptWidget({
    Key? key,
    required this.transaction,
  }) : super(key: key);

  String _transactionToString(double number) {
    String transactionString;
    var formatter = NumberFormat('#,000.00');
    number < 0 ? transactionString = '- \$' : transactionString = '+ \$';
    transactionString = transactionString + formatter.format(number.abs());
    return transactionString;
  }

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
            'assets/icons/screp_icon.svg',
            color: color,
          ),
          SizedBox(width: 8),
          Text(
            'Transaction receipt:',
            style: AppTextStyles.regular14pt.copyWith(color: color),
          ),
          SizedBox(width: 8),
          Text(
            _transactionToString(transaction),
            style: AppTextStyles.bold14pt.copyWith(color: color),
          ),
        ],
      ),
    );
  }
}

class InformationCards extends StatelessWidget {
  final int likeCount;
  final int messageCount;
  final int shareCount;
  final int viewCount;
  const InformationCards(
      {Key? key,
      required this.likeCount,
      required this.messageCount,
      required this.shareCount,
      required this.viewCount})
      : super(key: key);

  String _intToString(int number) {
    if (number > 1000) {
      return '${(number - number % 100) / 1000}k';
    } else
      return number.toString();
  }

  Widget informationCard(String assetName, String count) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 4,
      ),
      height: 32,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: AppColors.white.withOpacity(0.1),
      ),
      child: Row(
        children: [
          SvgPicture.asset(assetName),
          const SizedBox(width: 4),
          Text(
            count,
            style: AppTextStyles.medium14pt.copyWith(color: AppColors.gray2),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        informationCard(
          'assets/icons/like_icon.svg',
          _intToString(likeCount),
        ),
        SizedBox(width: 6),
        informationCard(
          'assets/icons/messages_icon.svg',
          _intToString(messageCount),
        ),
        SizedBox(width: 6),
        informationCard(
          'assets/icons/share_icon.svg',
          _intToString(shareCount),
        ),
        Spacer(),
        SvgPicture.asset(
          'assets/icons/show_icon.svg',
          color: AppColors.gray3,
        ),
        const SizedBox(width: 4),
        Text(
          _intToString(viewCount),
          style: AppTextStyles.medium14pt.copyWith(color: AppColors.gray3),
        ),
      ],
    );
  }
}
