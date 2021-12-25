import 'package:flutter/material.dart';
import 'package:n_plus_one/presentation/ui_kit/constants/colors.dart';
import 'package:n_plus_one/presentation/ui_kit/constants/text_styles.dart';
import 'package:n_plus_one/presentation/ui_kit/widgets/custom_sircle_avatar.dart';

class AccessCardAvatarsWidget extends StatelessWidget {
  final List<String> userAvatars;
  AccessCardAvatarsWidget({
    Key? key,
    required this.userAvatars,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int maxCount = (MediaQuery.of(context).size.width / 32 - 3).toInt();
    final double margin = 32;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        const SizedBox(height: 40),
        ...mapIndexed(userAvatars, (index, imageUrl) {
          if (index + 1 <= maxCount) {
            return Positioned(
              left: index * margin,
              child: circleAvatarWithBorders(imageUrl as String),
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

  Container circleAvatarWithBorders(String imageUrl) {
    return Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(width: 2, color: AppColors.gray2),
        ),
        child: CustomCircleAvatar(imageUrl: imageUrl));
  }
}
