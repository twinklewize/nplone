import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:n_plus_one/presentation/features/spaces_hub/widgets/single_space_widgets/zones/shared_zone/shared_zone_page_tabs/description_widget.dart';
import 'package:n_plus_one/presentation/ui_kit/colors/colors.dart';
import 'package:n_plus_one/presentation/ui_kit/constants/text_styles.dart';
import 'package:n_plus_one/presentation/ui_kit/widgets/custom_sircle_avatar.dart';
import 'package:n_plus_one/presentation/ui_kit/widgets/long_filled_button.dart';

class AccessCard extends StatelessWidget {
  final String title;
  final String text;
  final String highlitedText;
  final String rightsButtonText;
  final bool activeState;
  final List<String> userAvatars;
  bool? switchState;
  final Function() onRightsButton;
  Function(bool value)? onSwitch;
  Function()? onLinkButton;

  AccessCard({
    Key? key,
    required this.title,
    required this.text,
    this.highlitedText = '',
    required this.onRightsButton,
    required this.rightsButtonText,
    this.onSwitch,
    this.switchState,
    this.onLinkButton,
    this.activeState = true,
    this.userAvatars = const [],
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
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(
                title,
                style: AppTextStyles.bold20pt,
              ),

              // Monetization option Text
              const SizedBox(height: 8),
              Text(
                'Monetization option',
                style:
                    AppTextStyles.regular14pt.copyWith(color: AppColors.blue),
              ),
              const SizedBox(height: 8),

              // Secondary Text
              RichText(
                text: TextSpan(
                  text: text,
                  style: AppTextStyles.regular14pt
                      .copyWith(color: AppColors.gray2nd),
                  children: <TextSpan>[
                    TextSpan(
                      text: highlitedText,
                      style: AppTextStyles.bold14pt,
                    ),
                  ],
                ),
              ),

              // User Avatars
              userAvatars.length > 0
                  ? const SizedBox(height: 16)
                  : const SizedBox(),
              userAvatars.length > 0
                  ? ImagesWidget(
                      userAvatars: userAvatars,
                    )
                  : const SizedBox(),

              const SizedBox(height: 16),

              // Link Button
              onLinkButton == null
                  ? const SizedBox()
                  : LongFilledButton(
                      buttonColor:
                          activeState ? AppColors.green20 : AppColors.green04,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/icons/copy.svg',
                            color: activeState
                                ? AppColors.green
                                : AppColors.green.withOpacity(0.2),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            'Copy Invitation Link',
                            style: AppTextStyles.medium14pt.copyWith(
                              color: activeState
                                  ? AppColors.green
                                  : AppColors.green.withOpacity(0.2),
                            ),
                          ),
                        ],
                      ),
                      onPressed: () => onLinkButton!(),
                      height: 40,
                    ),
              onLinkButton == null
                  ? const SizedBox()
                  : const SizedBox(height: 16),

              // Rights Button
              LongFilledButton(
                buttonColor:
                    activeState ? AppColors.green20 : AppColors.green04,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/icons/actions/requiring_solutions.svg',
                      color: activeState
                          ? AppColors.green
                          : AppColors.green.withOpacity(0.2),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      rightsButtonText,
                      style: AppTextStyles.medium14pt.copyWith(
                        color: activeState
                            ? AppColors.green
                            : AppColors.green.withOpacity(0.2),
                      ),
                    ),
                  ],
                ),
                onPressed: () => onRightsButton(),
                height: 40,
              ),
            ],
          ),

          // Switch
          onSwitch == null
              ? const SizedBox()
              : Positioned(
                  right: 0,
                  child: CupertinoSwitch(
                    value: switchState!,
                    onChanged: (value) => onSwitch!(value),
                    activeColor: AppColors.green,
                  ),
                )
        ],
      ),
    );
  }
}

class AccessCardWithParticipants extends StatelessWidget {
  final List<String> userAvatars;
  final Function() onLinkButton;
  final Function() onEditButton;

  AccessCardWithParticipants({
    Key? key,
    required this.onLinkButton,
    this.userAvatars = const [],
    required this.onEditButton,
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
                onPressed: () {},
              ),
            ],
          ),

          // User Avatars
          userAvatars.length > 0
              ? const SizedBox(height: 16)
              : const SizedBox(),
          userAvatars.length > 0
              ? ImagesWidget(
                  userAvatars: userAvatars,
                )
              : const SizedBox(),

          const SizedBox(height: 16),

          // Link Button
          LongFilledButton(
            buttonColor: AppColors.green20,
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

class ImagesWidget extends StatelessWidget {
  final List<String> userAvatars;
  ImagesWidget({
    Key? key,
    required this.userAvatars,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int maxCount = (MediaQuery.of(context).size.width / 32 - 3).toInt();
    int extraCount;
    final double margin = 32;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        const SizedBox(height: 40),
        ...mapIndexed(userAvatars, (index, imageUrl) {
          if (index + 1 <= maxCount) {
            return Positioned(
              left: index * margin,
              child: imageElement(imageUrl as String),
            );
          } else
            return const SizedBox();
        }).toList(),
        userAvatars.length > maxCount
            ? Positioned(
                left: maxCount * margin,
                child: countElement(userAvatars.length - maxCount),
              )
            : const SizedBox(),
      ],
    );
  }

  Iterable<E> mapIndexed<E, T>(
      Iterable<T> items, E Function(int index, T item) f) sync* {
    var index = 0;

    for (final item in items) {
      yield f(index, item);
      index = index + 1;
    }
  }

  Container countElement(int count) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(width: 2, color: AppColors.gray2),
      ),
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.green,
        ),
        child: Center(
          child: Text(
            '+$count',
            style: AppTextStyles.bold12pt,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }

  Container imageElement(String imageUrl) {
    return Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(width: 2, color: AppColors.gray2),
        ),
        child: CustomCircleAvatar(imageUrl: imageUrl));
  }
}
