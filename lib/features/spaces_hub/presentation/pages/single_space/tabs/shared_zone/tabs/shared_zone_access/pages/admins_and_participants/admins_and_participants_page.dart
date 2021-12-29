import 'package:flutter/material.dart';
import 'package:n_plus_one/core/ui_kit/constants/colors.dart';
import 'package:n_plus_one/core/ui_kit/constants/text_styles.dart';
import 'package:n_plus_one/core/ui_kit/widgets/search_bar.dart';
import 'package:n_plus_one/features/spaces_hub/domain/entities/admin_and_participant_entity.dart';
import 'package:n_plus_one/features/spaces_hub/presentation/widgets/admins_and_participants_widgets/admins_and_participants_list_view_widget.dart';
import 'package:n_plus_one/features/spaces_hub/presentation/widgets/admins_and_participants_widgets/admins_buttons_widget.dart';
import 'package:n_plus_one/features/spaces_hub/presentation/widgets/admins_and_participants_widgets/participants_buttons_widget.dart';

class AdminsAndParticipantsPage extends StatefulWidget {
  static const routeName = '/admins-and-participants';
  AdminsAndParticipantsPage({
    Key? key,
  }) : super(key: key);

  late final bool adminsView;

  final Function() inventationButton = () {};
  final Function() addPersonButton = () {};

  final List<AdminAndParticipantEntity> adminsList = [
    new AdminAndParticipantEntity(
      imageUrl: 'https://i.ibb.co/g72brFF/Avatar.jpg',
      name: 'Anton Smith',
      position: 'CEO',
      instagramUrl: '',
      linkedInUrl: '',
      facebookInUrl: '',
      isMe: true,
    ),
    new AdminAndParticipantEntity(
      imageUrl: 'https://i.ibb.co/c63vCrZ/Avatar-1.jpg',
      name: 'Caroline Smith',
      position: 'Marketing',
      instagramUrl: '',
      linkedInUrl: '',
      facebookInUrl: '',
      button: () {},
    ),
    new AdminAndParticipantEntity(
      imageUrl: 'https://i.ibb.co/vqrHQC8/Avatar-2.jpg',
      name: 'Maria Carlos',
      position: 'Financial director',
      instagramUrl: '',
      linkedInUrl: '',
      facebookInUrl: '',
      button: () {},
    ),
    new AdminAndParticipantEntity(
      imageUrl: 'https://i.ibb.co/qmcRq7S/Avatar-3.jpg',
      name: 'Daria Loures',
      position: 'HR',
      instagramUrl: '',
      linkedInUrl: '',
      facebookInUrl: '',
      button: () {},
    ),
    new AdminAndParticipantEntity(
      imageUrl: 'https://i.ibb.co/ZKgHKKb/Avatar-4.jpg',
      name: 'Bran Darlos',
      instagramUrl: '',
      linkedInUrl: '',
      facebookInUrl: '',
      button: () {},
    ),
  ];

  @override
  State<AdminsAndParticipantsPage> createState() => _AdminsPageState();
}

class _AdminsPageState extends State<AdminsAndParticipantsPage> {
  late List<AdminAndParticipantEntity> participantsList;

  @override
  void initState() {
    participantsList = widget.adminsList;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // Admins or participants
    if (ModalRoute.of(context) == null)
      widget.adminsView = false;
    else {
      final routeArgs =
          ModalRoute.of(context)!.settings.arguments as Map<String, String>;
      widget.adminsView = routeArgs['admins'] == 'false' ? false : true;
    }

    final Function(String value) onSearch = (value) {
      setState(() {
        value == ''
            ? participantsList = widget.adminsList
            : participantsList = participantsList.where(
                (admin) {
                  return admin.name
                          .toLowerCase()
                          .contains(value.toLowerCase()) ||
                      admin.position
                          .toLowerCase()
                          .contains(value.toLowerCase());
                },
              ).toList();
      });
    };

    return Scaffold(
      backgroundColor: AppColors.gray1,
      appBar: AppBar(
        title: widget.adminsView
            ? Text('Admins', style: AppTextStyles.medium16pt)
            : Text('Participants: ${widget.adminsList.length}',
                style: AppTextStyles.medium16pt),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: AppColors.white,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: AppColors.gray1,
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: SearchBar(onSearch: onSearch),
          ),
          const SizedBox(height: 12),
          widget.adminsView
              ? AdminsButtonsWidget(
                  addPersonButton: widget.addPersonButton,
                  inventationButton: widget.inventationButton,
                )
              : ParticipantButtonsWidget(
                  inventationButton: widget.inventationButton,
                ),
          const SizedBox(height: 16),
          AdminsAndParticipantsListViewWidget(
              participantsList: participantsList,
              adminsView: widget.adminsView),
        ],
      ),
    );
  }
}
