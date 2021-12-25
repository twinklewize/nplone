import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:n_plus_one/presentation/ui_kit/constants/colors.dart';
import 'package:n_plus_one/presentation/ui_kit/constants/text_styles.dart';
import 'package:n_plus_one/presentation/ui_kit/widgets/long_filled_button.dart';

import 'acsess_card_avatars_widget.dart';

class AccessCardWidget extends StatelessWidget {
  final String title;
  final String text;
  final String highlitedText;
  final String rightsButtonText;
  final bool activeState;
  final List<String> userAvatars;
  final bool? switchState;
  final Function() onRightsButton;
  final Function(bool value)? onSwitch;
  final Function()? onLinkButton;

  AccessCardWidget({
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
                  ? AccessCardAvatarsWidget(
                      userAvatars: userAvatars,
                    )
                  : const SizedBox(),

              const SizedBox(height: 16),

              // Link Button
              onLinkButton == null
                  ? const SizedBox()
                  : LongFilledButton(
                      buttonColor: activeState
                          ? AppColors.green.withOpacity(0.2)
                          : AppColors.green.withOpacity(0.04),
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
                buttonColor: activeState
                    ? AppColors.green.withOpacity(0.2)
                    : AppColors.green.withOpacity(0.04),
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
