import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:n_plus_one/core/utils/text_formatter.dart';
import 'package:n_plus_one/domain/entities/old_entities/user_pay_entity.dart';
import 'package:n_plus_one/presentation/ui_kit/constants/colors.dart';
import 'package:n_plus_one/presentation/ui_kit/constants/text_styles.dart';
import 'package:n_plus_one/presentation/ui_kit/widgets/custom_sircle_avatar.dart';

import 'pay_and_view_all_buttons.dart';

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
        // User List
        UserPayListView(userPayList: widget.userPayList, isViewAll: isViewAll),
        const SizedBox(height: 8),

        // Buttons
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
                                  'Paid ${TextFormatter.moneyToString(total)}',
                                  style: AppTextStyles.regular14pt.copyWith(
                                    color: AppColors.green,
                                  ),
                                ),
                              ],
                            )
                          : RichText(
                              text: TextSpan(
                                  text: TextFormatter.moneyToString(count),
                                  style: AppTextStyles.regular14pt,
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: '/' +
                                          TextFormatter.moneyToString(total),
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
                        color: paid ? AppColors.green : AppColors.gray3,
                      ),
                      Container(
                        height: 4,
                        width: secondContainerSize,
                        color: AppColors.gray3.withOpacity(0.3),
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
