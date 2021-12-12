import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:n_plus_one/presentation/ui_kit/colors/colors.dart';
import 'package:n_plus_one/presentation/ui_kit/constants/text_styles.dart';
import 'package:n_plus_one/presentation/ui_kit/widgets/custom_sircle_avatar.dart';
import 'package:n_plus_one/presentation/ui_kit/widgets/long_filled_button.dart';

import 'actions_page.dart';

class NewsWidget extends StatelessWidget {
  const NewsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: NewsButtons(),
          ),
          NewsCard(
            title: 'January News @!',
            text:
                'Kitchen is ready. The guidelines were to create a modern and minimalist design that balances beauty and functionality.',
            imageURL: 'https://i.ibb.co/X5kQP9T/apartment-image.png',
            likeCount: 10,
            messageCount: 5,
            shareCount: 19,
            viewCount: 13,
            onMoreButton: () {},
            onLikeButton: () {},
            onMessageButton: () {},
            onShareButton: () {},
          ),
          NewsCard(
            title: 'January News @!',
            text:
                'Kitchen is ready. The guidelines were to create a modern and minimalist design that balances beauty and functionality.',
            likeCount: 43,
            messageCount: 13,
            shareCount: 6,
            viewCount: 1123,
            transaction: 20000.00,
            userPayList: [
              new UserPayEntity(
                imageUrl: 'https://i.ibb.co/g72brFF/Avatar.jpg',
                name: 'Anton Scmidt',
                count: 0,
                total: 2000,
                isMe: true,
              ),
              new UserPayEntity(
                imageUrl: 'https://i.ibb.co/c63vCrZ/Avatar-1.jpg',
                name: 'Maria Carlos',
                count: 0,
                total: 2000,
              ),
              new UserPayEntity(
                imageUrl: 'https://i.ibb.co/vqrHQC8/Avatar-2.jpg',
                name: 'Caroline Smith',
                count: 2000,
                total: 2000,
              ),
              new UserPayEntity(
                imageUrl: 'https://i.ibb.co/qmcRq7S/Avatar-3.jpg',
                name: 'Daria Loures',
                count: 500,
                total: 1000,
              ),
              new UserPayEntity(
                imageUrl: 'https://i.ibb.co/ZKgHKKb/Avatar-4.jpg',
                name: 'Bran Darlos',
                count: 499.99,
                total: 2000,
              ),
            ],
            paySum: 2000,
            payButton: () {},
            onMoreButton: () {},
            onLikeButton: () {},
            onMessageButton: () {},
            onShareButton: () {},
          ),
          NewsCard(
            title: 'January News @!',
            text:
                'Kitchen is ready. The guidelines were to create a modern and minimalist design that balances beauty and functionality.',
            imageURL: 'https://i.ibb.co/X5kQP9T/apartment-image.png',
            likeCount: 43,
            messageCount: 13,
            shareCount: 6,
            viewCount: 1123,
            transaction: -20000.00,
            onMoreButton: () {},
            onLikeButton: () {},
            onMessageButton: () {},
            onShareButton: () {},
          ),
          NewsCard(
            title: 'January News @!',
            text:
                'Kitchen is ready. The guidelines were to create a modern and minimalist design that balances beauty and functionality.',
            imageURL: 'https://i.ibb.co/X5kQP9T/apartment-image.png',
            likeCount: 43,
            messageCount: 13,
            shareCount: 6,
            viewCount: 1123,
            bet: true,
            sum: 1200,
            creator: 'Anton Smith',
            deadline: '2 Feb 2022',
            onMoreButton: () {},
            onLikeButton: () {},
            onMessageButton: () {},
            onShareButton: () {},
          ),
          NewsCard(
            title: 'January News @!',
            text:
                'Kitchen is ready. The guidelines were to create a modern and minimalist design that balances beauty and functionality.',
            imageURL: 'https://i.ibb.co/X5kQP9T/apartment-image.png',
            likeCount: 10,
            messageCount: 5,
            shareCount: 19,
            viewCount: 13,
            vote: true,
            sum: 200,
            creator: 'Andre Smith',
            deadline: '3 Feb 2022',
            onMoreButton: () {},
            onLikeButton: () {},
            onMessageButton: () {},
            onShareButton: () {},
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

  const NewsCard({
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
        Divider(color: AppColors.black, height: 1),
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

              // Карточки с количеством лайков, сообщений и т.п
              InformationCards(
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

class UserPayListViewWithButtons extends StatefulWidget {
  const UserPayListViewWithButtons({
    Key? key,
    required this.userPayList,
    required this.paySum,
    required this.payButton,
  }) : super(key: key);
  final List<UserPayEntity> userPayList;
  final double paySum;
  final Function() payButton;

  @override
  State<UserPayListViewWithButtons> createState() =>
      _UserPayListViewWithButtonsState();
}

class _UserPayListViewWithButtonsState
    extends State<UserPayListViewWithButtons> {
  late bool isViewAll;

  @override
  void initState() {
    isViewAll = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        UserPayListView(userPayList: widget.userPayList, isViewAll: isViewAll),
        const SizedBox(height: 8),
        PayAndViewAllButtons(
          payButton: () => widget.payButton(),
          paySum: widget.paySum,
          viewAllButton: () {
            setState(() {
              isViewAll = !isViewAll;
            });
          },
          viewAllCount: isViewAll ? 0 : widget.userPayList.length,
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}

class UserPayEntity {
  final String imageUrl;
  final String name;
  final double count;
  final double total;
  final bool isMe;

  UserPayEntity({
    required this.imageUrl,
    required this.name,
    this.isMe = false,
    required this.count,
    required this.total,
  });
}

class UserPayListView extends StatelessWidget {
  final bool isViewAll;
  const UserPayListView({
    Key? key,
    required this.userPayList,
    this.isViewAll = false,
  }) : super(key: key);
  final List<UserPayEntity> userPayList;

  int getItemCount() {
    if ((userPayList.length > 4 && isViewAll) || userPayList.length < 4)
      return userPayList.length;
    return 4;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: getItemCount(),
            itemBuilder: (context, index) {
              return UserPayListTile(
                count: userPayList[index].count,
                total: userPayList[index].total,
                name: userPayList[index].name,
                imageUrl: userPayList[index].imageUrl,
                isMe: userPayList[index].isMe,
              );
            }),
        getItemCount() != 4
            ? const SizedBox()
            : Positioned(
                bottom: 0,
                child: Container(
                  width: MediaQuery.of(context).size.width - 24,
                  height: 72,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      AppColors.gray1,
                      AppColors.gray1.withOpacity(0),
                    ],
                  )),
                ),
              ),
      ],
    );
  }
}

class UserPayListTile extends StatelessWidget {
  const UserPayListTile({
    Key? key,
    this.isMe = false,
    required this.count,
    required this.total,
    required this.name,
    required this.imageUrl,
  }) : super(key: key);
  final double count;
  final double total;
  final bool isMe;
  final String name;
  final String imageUrl;

  String _moneyToString(double number) {
    var formatter = NumberFormat('#,##0.00');
    return '\$' + formatter.format(number.abs());
  }

  @override
  Widget build(BuildContext context) {
    final double firstContainerSize =
        count / total * (MediaQuery.of(context).size.width - 76);
    final double secondContainerSize =
        MediaQuery.of(context).size.width - 76 - firstContainerSize;
    final bool paid = (count - total).abs() < 0.001;
    return Column(
      children: [
        Row(
          children: [
            //Image
            CustomCircleAvatar(imageUrl: imageUrl),
            const SizedBox(width: 12),

            // Name and $count/$total
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width - 76,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Name
                      RichText(
                        text: TextSpan(
                            text: name,
                            style: AppTextStyles.regular14pt,
                            children: <TextSpan>[
                              isMe
                                  ? TextSpan(
                                      text: ' (you)',
                                      style: AppTextStyles.regular14pt.copyWith(
                                        color: AppColors.white.withOpacity(0.5),
                                      ),
                                    )
                                  : TextSpan(),
                            ]),
                      ),

                      //$count/$total
                      paid
                          ? Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/icons/save_icon.svg',
                                  color: AppColors.green,
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  'Paid ${_moneyToString(total)}',
                                  style: AppTextStyles.regular14pt.copyWith(
                                    color: AppColors.green,
                                  ),
                                ),
                              ],
                            )
                          : RichText(
                              text: TextSpan(
                                  text: _moneyToString(count),
                                  style: AppTextStyles.regular14pt,
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: '/' + _moneyToString(total),
                                      style: AppTextStyles.regular14pt.copyWith(
                                        color: AppColors.white.withOpacity(0.5),
                                      ),
                                    ),
                                  ]),
                            ),
                    ],
                  ),
                ),
                const SizedBox(height: 6),

                // Indicator Bar
                ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: Row(
                    children: [
                      Container(
                        height: 4,
                        width: firstContainerSize,
                        color: paid ? AppColors.green : AppColors.grey3rd,
                      ),
                      Container(
                        height: 4,
                        width: secondContainerSize,
                        color: AppColors.grey3rd.withOpacity(0.3),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}

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

  String _sumToString(double number) {
    var formatter = NumberFormat('#,##0');
    return '\$ ' + formatter.format(number.abs());
  }

  @override
  Widget build(BuildContext context) {
    double width = (MediaQuery.of(context).size.width - (2 * 12 + 2 * 16)) / 3;
    return Row(
      children: [
        informationColumn(width, 'Sum:', _sumToString(sum)),
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

class InformationCards extends StatefulWidget {
  int likeCount;
  final int messageCount;
  final int shareCount;
  final int viewCount;
  final Function() onLikeButton;
  final Function() onMessageButton;
  final Function() onShareButton;
  bool likeState;
  bool shareState;
  InformationCards({
    Key? key,
    required this.likeCount,
    required this.messageCount,
    required this.shareCount,
    required this.viewCount,
    required this.onLikeButton,
    required this.onMessageButton,
    required this.onShareButton,
    required this.likeState,
    required this.shareState,
  }) : super(key: key);

  @override
  State<InformationCards> createState() => _InformationCardsState();
}

class _InformationCardsState extends State<InformationCards> {
  String _intToString(int number) {
    if (number > 1000) {
      return '${(number - number % 100) / 1000}k';
    } else
      return number.toString();
  }

  Widget informationCard(
      String assetName, String count, Function() onButton, bool state) {
    return Container(
      decoration: BoxDecoration(
        color: state ? AppColors.green20 : AppColors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () => onButton(),
          borderRadius: BorderRadius.circular(16),
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 4,
            ),
            height: 32,
            child: Row(
              children: [
                SvgPicture.asset(
                  assetName,
                  color: state ? AppColors.green : AppColors.gray2nd,
                ),
                const SizedBox(width: 4),
                Text(
                  count,
                  style: AppTextStyles.medium14pt.copyWith(
                      color: state ? AppColors.green : AppColors.gray2nd),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        informationCard(
          'assets/icons/like_icon.svg',
          _intToString(widget.likeCount),
          () {
            widget.onLikeButton();
            setState(() {
              widget.likeState = !widget.likeState;
              if (widget.likeState) widget.likeCount++;
              if (!widget.likeState) widget.likeCount--;
            });
          },
          widget.likeState,
        ),
        SizedBox(width: 6),
        informationCard('assets/icons/messages_icon.svg',
            _intToString(widget.messageCount), widget.onMessageButton, false),
        SizedBox(width: 6),
        informationCard(
          'assets/icons/share_icon.svg',
          _intToString(widget.shareCount),
          () {
            widget.onShareButton();
            // setState(() {
            //   widget.shareState = !widget.shareState;
            // });
          },
          widget.shareState,
        ),
        Spacer(),
        SvgPicture.asset(
          'assets/icons/show_icon.svg',
          color: AppColors.gray3,
        ),
        const SizedBox(width: 4),
        Text(
          _intToString(widget.viewCount),
          style: AppTextStyles.medium14pt.copyWith(color: AppColors.gray3),
        ),
      ],
    );
  }
}

class VotingButtons extends StatelessWidget {
  const VotingButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
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
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}

class NewsButtons extends StatelessWidget {
  const NewsButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
                    SvgPicture.asset('assets/icons/plus_icon.svg'),
                    const SizedBox(width: 8),
                    Text('News', style: AppTextStyles.medium14pt)
                  ],
                ),
                onPressed: () {},
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
    );
  }
}

class PayAndViewAllButtons extends StatelessWidget {
  final int viewAllCount;
  final double paySum;
  final Function() payButton;
  final Function() viewAllButton;
  const PayAndViewAllButtons({
    Key? key,
    this.viewAllCount = 0,
    required this.paySum,
    required this.payButton,
    required this.viewAllButton,
  }) : super(key: key);

  String _sumToString(double number) {
    String transactionString;
    var formatter = NumberFormat('#,##0');
    return formatter.format(number.abs());
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: LongFilledButton(
            buttonColor: AppColors.green20,
            onPressed: () => payButton(),
            child: Text(
              'Pay \$' + _sumToString(paySum),
              style: AppTextStyles.medium14pt.copyWith(
                color: AppColors.green,
              ),
            ),
            height: 40,
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: LongFilledButton(
            buttonColor: AppColors.white10,
            onPressed: () => viewAllButton(),
            child: Text(
              viewAllCount == 0 ? 'Hide' : 'View All($viewAllCount)',
              style: AppTextStyles.medium14pt,
            ),
            height: 40,
          ),
        ),
      ],
    );
  }
}
