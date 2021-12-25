import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:n_plus_one/presentation/features/spaces_hub/ui_entities/admin_and_participant_entity.dart';
import 'package:n_plus_one/presentation/ui_kit/constants/colors.dart';

class MediaButtons extends StatelessWidget {
  const MediaButtons({
    Key? key,
    required this.adminsList,
    required this.index,
  }) : super(key: key);

  final int index;
  final List<AdminAndParticipantEntity> adminsList;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        mediaButton(
          'assets/icons/instagram_icon.svg',
          adminsList[index].instagramUrl,
        ),
        const SizedBox(width: 6),
        mediaButton(
          'assets/icons/linkedIn_icon.svg',
          adminsList[index].linkedInUrl,
        ),
        const SizedBox(width: 6),
        mediaButton(
          'assets/icons/facebook_icon.svg',
          adminsList[index].facebookInUrl,
        ),
      ],
    );
  }

  Container mediaButton(String asset, String link) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(4),
          onTap: () => link,
          child: SizedBox(
            width: 28,
            height: 28,
            child: Center(
              child: SvgPicture.asset(asset),
            ),
          ),
        ),
      ),
    );
  }
}
