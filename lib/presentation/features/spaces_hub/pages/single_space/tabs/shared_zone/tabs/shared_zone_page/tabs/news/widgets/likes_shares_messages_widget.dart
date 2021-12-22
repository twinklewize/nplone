import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:n_plus_one/core/utils/text_formatter.dart';
import 'package:n_plus_one/presentation/ui_kit/colors/colors.dart';
import 'package:n_plus_one/presentation/ui_kit/constants/text_styles.dart';

class LikesMessagesSharesWidget extends StatefulWidget {
  int likeCount;
  final int messageCount;
  final int shareCount;
  final int viewCount;
  final Function() onLikeButton;
  final Function() onMessageButton;
  final Function() onShareButton;
  bool likeState;
  bool shareState;
  LikesMessagesSharesWidget({
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
  State<LikesMessagesSharesWidget> createState() =>
      _LikesMessagesSharesWidgetState();
}

class _LikesMessagesSharesWidgetState extends State<LikesMessagesSharesWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // likes
        iconAndCount(
          'assets/icons/like_icon.svg',
          TextFormatter.intToString(widget.likeCount),
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

        // Messages
        iconAndCount(
            'assets/icons/messages.svg',
            TextFormatter.intToString(widget.messageCount),
            widget.onMessageButton,
            false),
        SizedBox(width: 6),

        // Shares
        iconAndCount(
          'assets/icons/share_icon.svg',
          TextFormatter.intToString(widget.shareCount),
          () {
            widget.onShareButton();
          },
          widget.shareState,
        ),
        Spacer(),

        // Views
        SvgPicture.asset(
          'assets/icons/show_icon.svg',
          color: AppColors.gray3,
        ),
        const SizedBox(width: 4),
        Text(
          TextFormatter.intToString(widget.viewCount),
          style: AppTextStyles.medium14pt.copyWith(color: AppColors.gray3),
        ),
      ],
    );
  }

  Widget iconAndCount(
      String assetName, String count, Function() onButton, bool state) {
    return Container(
      decoration: BoxDecoration(
        color: state
            ? AppColors.green.withOpacity(0.2)
            : AppColors.white.withOpacity(0.1),
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
}
