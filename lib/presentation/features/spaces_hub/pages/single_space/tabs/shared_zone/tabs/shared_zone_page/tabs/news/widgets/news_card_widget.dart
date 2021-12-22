import 'package:flutter/material.dart';
import 'package:n_plus_one/presentation/ui_kit/colors/colors.dart';
import 'package:n_plus_one/presentation/ui_kit/constants/text_styles.dart';
import 'package:n_plus_one/presentation/ui_kit/widgets/long_filled_button.dart';

import 'transaction_receipt_widget.dart';
import 'sum_deadline_creator_widget.dart';
import 'user_pay_list_view_with_buttons.dart';
import 'voting_buttons.dart';
import 'likes_shares_messages_widget.dart';

import '../ui_entities/user_pay_entity.dart';

class NewsCardWidget extends StatelessWidget {
  final String title;
  final String text;
  final String imageURL;
  final double transaction;
  final int likeCount;
  final int messageCount;
  final int shareCount;
  final int viewCount;
  final bool bet;
  final bool vote;
  final double sum;
  final String deadline;
  final String creator;
  final List<UserPayEntity> userPayList;
  final double paySum;
  final Function()? payButton;
  final Function() onMoreButton;
  final Function() onLikeButton;
  final Function() onMessageButton;
  final Function() onShareButton;
  final bool likeState;
  final bool shareState;

  const NewsCardWidget({
    Key? key,
    required this.title,
    required this.text,
    required this.likeCount,
    required this.messageCount,
    required this.shareCount,
    required this.viewCount,
    this.imageURL = '',
    this.transaction = 0,
    this.bet = false,
    this.vote = false,
    this.sum = 0,
    this.deadline = '',
    this.creator = '',
    this.userPayList = const [],
    this.paySum = 0,
    this.payButton,
    required this.onMoreButton,
    required this.onLikeButton,
    required this.onMessageButton,
    required this.onShareButton,
    this.likeState = false,
    this.shareState = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(color: AppColors.line, height: 1),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 12),
          width: MediaQuery.of(context).size.width,
          color: AppColors.gray1,
          child: Column(
            children: [
              SizedBox(height: 20),

              // Image
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  imageURL != ''
                      ? ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Container(
                            color: AppColors.gray3,
                            width: 112,
                            height: 84,
                            child: Image.network(imageURL),
                          ),
                        )
                      : const SizedBox(),
                  imageURL != '' ? const SizedBox(width: 12) : const SizedBox(),

                  //Title with More Icon
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: imageURL != ''
                            ? MediaQuery.of(context).size.width - (3 * 12 + 112)
                            : MediaQuery.of(context).size.width - 24,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              title,
                              style: AppTextStyles.bold16pt,
                            ),
                            Material(
                              color: Colors.transparent,
                              child: SizedBox(
                                child: InkWell(
                                    borderRadius: BorderRadius.circular(50),
                                    onTap: () => onMoreButton(),
                                    child: Icon(Icons.more_horiz,
                                        color: AppColors.gray3)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 8),

                      // Text
                      SizedBox(
                        width: imageURL != ''
                            ? MediaQuery.of(context).size.width - (3 * 12 + 112)
                            : MediaQuery.of(context).size.width - 24,
                        child: Text(
                          text,
                          maxLines: 3,
                          style: AppTextStyles.regular12pt
                              .copyWith(color: AppColors.gray2nd),
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

              const SizedBox(height: 16),

              //Sum, Deadlines and Creator
              bet || vote
                  ? Column(
                      children: [
                        const SizedBox(height: 16),
                        SumDeadlineCreatorWidget(
                          creator: creator,
                          date: deadline,
                          sum: sum,
                        ),
                      ],
                    )
                  : const SizedBox(),

              // Bet Button
              bet
                  ? Column(
                      children: [
                        const SizedBox(height: 16),
                        LongFilledButton(
                          buttonColor: AppColors.green.withOpacity(0.2),
                          onPressed: () {},
                          child: Text(
                            'Bet',
                            style: AppTextStyles.medium14pt.copyWith(
                              color: AppColors.green,
                            ),
                          ),
                          height: 40,
                        ),
                        const SizedBox(height: 16),
                      ],
                    )
                  : const SizedBox(),

              // Voting Buttons
              vote
                  ? Column(
                      children: [
                        const SizedBox(height: 16),
                        VotingButtons(),
                      ],
                    )
                  : const SizedBox(),

              // User Pay List With Buttons
              userPayList.length == 0
                  ? const SizedBox()
                  : UserPayListViewWithButtons(
                      userPayList: userPayList,
                      payButton: payButton!,
                      paySum: paySum,
                    ),

              // Cards with likes, messages and shares count
              LikesMessagesSharesWidget(
                likeCount: likeCount,
                messageCount: messageCount,
                shareCount: shareCount,
                viewCount: viewCount,
                onLikeButton: onLikeButton,
                onMessageButton: onMessageButton,
                onShareButton: onShareButton,
                likeState: likeState,
                shareState: shareState,
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ],
    );
  }
}
