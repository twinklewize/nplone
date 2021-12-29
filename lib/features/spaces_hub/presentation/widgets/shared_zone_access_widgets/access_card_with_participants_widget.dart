import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:n_plus_one/core/ui_kit/constants/colors.dart';
import 'package:n_plus_one/core/ui_kit/constants/text_styles.dart';
import 'package:n_plus_one/core/ui_kit/widgets/long_filled_button.dart';
import 'package:n_plus_one/core/ui_kit/widgets/small_button.dart';

import 'acsess_card_avatars_widget.dart';

class AccessCardWithParticipantsWidget extends StatelessWidget {
  final List<String> userAvatars;
  final Function() onLinkButton;
  final Function() onViewAllButton;

  AccessCardWithParticipantsWidget({
    Key? key,
    required this.onLinkButton,
    this.userAvatars = const [],
    required this.onViewAllButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12),
      width: MediaQuery.of(context).size.width - 24,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: AppColors.gray2,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Paticipants: ${userAvatars.length}',
                style: AppTextStyles.bold20pt,
              ),
              SmallButton(
                text: 'View All',
                color: AppColors.white.withOpacity(0.1),
                onPressed: () => onViewAllButton(),
              ),
            ],
          ),

          // User Avatars
          userAvatars.length > 0
              ? const SizedBox(height: 16)
              : const SizedBox(),
          userAvatars.length > 0
              ? AccessCardAvatarsWidget(
                  userAvatars: userAvatars,
                )
              : const SizedBox(),

          const SizedBox(height: 16),

          // Link Button
          LongFilledButton(
            buttonColor: AppColors.green.withOpacity(0.2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/icons/copy.svg',
                  color: AppColors.green,
                ),
                const SizedBox(width: 8),
                Text(
                  'Copy Invitation Link',
                  style: AppTextStyles.medium14pt.copyWith(
                    color: AppColors.green,
                  ),
                ),
              ],
            ),
            onPressed: () => onLinkButton(),
            height: 40,
          ),
        ],
      ),
    );
  }
}
