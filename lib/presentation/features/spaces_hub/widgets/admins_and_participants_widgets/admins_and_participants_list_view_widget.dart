import 'package:flutter/material.dart';
import 'package:n_plus_one/domain/entities/old_entities/admin_and_participant_entity.dart';
import 'package:n_plus_one/presentation/ui_kit/constants/colors.dart';
import 'package:n_plus_one/presentation/ui_kit/constants/text_styles.dart';
import 'package:n_plus_one/presentation/ui_kit/widgets/custom_sircle_avatar.dart';
import 'package:n_plus_one/presentation/ui_kit/widgets/small_button.dart';

import 'media_buttons_widget.dart';

class AdminsAndParticipantsListViewWidget extends StatelessWidget {
  final List<AdminAndParticipantEntity> participantsList;
  final bool adminsView;
  const AdminsAndParticipantsListViewWidget({
    Key? key,
    required this.participantsList,
    required this.adminsView,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: participantsList.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Divider(color: AppColors.line, height: 1),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(12),
                color: AppColors.gray1,
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Admin Avatar
                        CustomCircleAvatar(
                            imageUrl: participantsList[index].imageUrl),
                        const SizedBox(width: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Admin Name
                            RichText(
                              textDirection: TextDirection.ltr,
                              text: TextSpan(
                                text: participantsList[index].name,
                                style: AppTextStyles.regular14pt,
                                children: <TextSpan>[
                                  participantsList[index].isMe
                                      ? TextSpan(
                                          text: (' (you)'),
                                          style: AppTextStyles.regular14pt
                                              .copyWith(
                                            color: AppColors.white
                                                .withOpacity(0.5),
                                          ),
                                        )
                                      : TextSpan(),
                                ],
                              ),
                            ),

                            // Admin Position
                            participantsList[index].position == ''
                                ? const SizedBox()
                                : const SizedBox(height: 4),
                            participantsList[index].position == ''
                                ? const SizedBox()
                                : Text(
                                    participantsList[index].position,
                                    style: AppTextStyles.regular12pt
                                        .copyWith(color: AppColors.gray3),
                                  ),
                            const SizedBox(height: 8),
                            MediaButtons(
                              adminsList: participantsList,
                              index: index,
                            ),
                          ],
                        ),
                        Spacer(),

                        // Edit Button
                        participantsList[index].isMe || !adminsView
                            ? SizedBox()
                            : SmallButton(
                                assetName: 'assets/icons/edit_icon.svg',
                                text: 'Edit',
                                color: AppColors.white.withOpacity(0.1),
                                onPressed: () {
                                  Navigator.pushNamed(
                                    context,
                                    '/admin-edit',
                                    arguments: {
                                      'imageUrl':
                                          participantsList[index].imageUrl,
                                      'name': participantsList[index].name,
                                    },
                                  );
                                },
                              ),

                        // Dismiss Button
                        participantsList[index].isMe || adminsView
                            ? SizedBox()
                            : SmallButton(
                                color: AppColors.red.withOpacity(0.2),
                                textColor: AppColors.red,
                                assetName: 'assets/icons/dismiss_icon.svg',
                                text: 'Dismiss',
                                onPressed: () {
                                  participantsList[index].button!();
                                },
                              ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
