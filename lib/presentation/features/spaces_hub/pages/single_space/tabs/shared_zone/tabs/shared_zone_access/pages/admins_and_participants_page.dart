import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:n_plus_one/presentation/ui_kit/colors/colors.dart';
import 'package:n_plus_one/presentation/ui_kit/constants/text_styles.dart';
import 'package:n_plus_one/presentation/ui_kit/widgets/custom_sircle_avatar.dart';
import 'package:n_plus_one/presentation/ui_kit/widgets/long_filled_button.dart';
import 'package:n_plus_one/presentation/ui_kit/widgets/search_bar.dart';
import 'package:n_plus_one/presentation/ui_kit/widgets/small_button.dart';

class AdminsAndParticipantsPage extends StatefulWidget {
  static const routeName = '/admins-and-participants';
  AdminsAndParticipantsPage({
    Key? key,
  }) : super(key: key);

  late final bool admins;

  final Function() inventationButton = () {};
  final Function() addPersonButton = () {};

  final List<AdminEntity> adminsList = [
    new AdminEntity(
      imageUrl: 'https://i.ibb.co/g72brFF/Avatar.jpg',
      name: 'Anton Smith',
      position: 'CEO',
      instagramUrl: '',
      linkedInUrl: '',
      facebookInUrl: '',
      isMe: true,
    ),
    new AdminEntity(
      imageUrl: 'https://i.ibb.co/c63vCrZ/Avatar-1.jpg',
      name: 'Caroline Smith',
      position: 'Marketing',
      instagramUrl: '',
      linkedInUrl: '',
      facebookInUrl: '',
      button: () {},
    ),
    new AdminEntity(
      imageUrl: 'https://i.ibb.co/vqrHQC8/Avatar-2.jpg',
      name: 'Maria Carlos',
      position: 'Financial director',
      instagramUrl: '',
      linkedInUrl: '',
      facebookInUrl: '',
      button: () {},
    ),
    new AdminEntity(
      imageUrl: 'https://i.ibb.co/qmcRq7S/Avatar-3.jpg',
      name: 'Daria Loures',
      position: 'HR',
      instagramUrl: '',
      linkedInUrl: '',
      facebookInUrl: '',
      button: () {},
    ),
    new AdminEntity(
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
  late List<AdminEntity> adminsList;

  @override
  void initState() {
    adminsList = widget.adminsList;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // Admins or participants
    if (ModalRoute.of(context) == null)
      widget.admins = false;
    else {
      final routeArgs =
          ModalRoute.of(context)!.settings.arguments as Map<String, String>;
      widget.admins = routeArgs['admins'] == 'false' ? false : true;
    }

    final Function(String value) onSearch = (value) {
      setState(() {
        value == ''
            ? adminsList = widget.adminsList
            : adminsList = adminsList.where(
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
        title: widget.admins
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
          widget.admins
              ? AdminsButtons(
                  addPersonButton: widget.addPersonButton,
                  inventationButton: widget.inventationButton,
                )
              : ParticipantButtons(
                  inventationButton: widget.inventationButton,
                ),
          const SizedBox(height: 16),
          AdminsListView(adminsList: adminsList, admins: widget.admins),
        ],
      ),
    );
  }
}

class AdminsListView extends StatelessWidget {
  final List<AdminEntity> adminsList;
  final bool admins;
  const AdminsListView({
    Key? key,
    required this.adminsList,
    required this.admins,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: adminsList.length,
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
                            imageUrl: adminsList[index].imageUrl),
                        const SizedBox(width: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Admin Name
                            RichText(
                              textDirection: TextDirection.ltr,
                              text: TextSpan(
                                text: adminsList[index].name,
                                style: AppTextStyles.regular14pt,
                                children: <TextSpan>[
                                  adminsList[index].isMe
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
                            adminsList[index].position == ''
                                ? const SizedBox()
                                : const SizedBox(height: 4),
                            adminsList[index].position == ''
                                ? const SizedBox()
                                : Text(
                                    adminsList[index].position,
                                    style: AppTextStyles.regular12pt
                                        .copyWith(color: AppColors.gray3),
                                  ),
                            const SizedBox(height: 8),
                            MediaButtons(
                              adminsList: adminsList,
                              index: index,
                            ),
                          ],
                        ),
                        Spacer(),

                        // Edit Button
                        adminsList[index].isMe || !admins
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
                                      'imageUrl': adminsList[index].imageUrl,
                                      'name': adminsList[index].name,
                                    },
                                  );
                                },
                              ),

                        // Dismiss Button
                        adminsList[index].isMe || admins
                            ? SizedBox()
                            : SmallButton(
                                color: AppColors.red.withOpacity(0.2),
                                textColor: AppColors.red,
                                assetName: 'assets/icons/dismiss_icon.svg',
                                text: 'Dismiss',
                                onPressed: () {
                                  adminsList[index].button!();
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

class MediaButtons extends StatelessWidget {
  const MediaButtons({
    Key? key,
    required this.adminsList,
    required this.index,
  }) : super(key: key);

  final int index;
  final List<AdminEntity> adminsList;

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

class AdminEntity {
  final String imageUrl;
  final String name;
  final String position;
  final String instagramUrl;
  final String linkedInUrl;
  final String facebookInUrl;
  final bool isMe;
  Function()? button;

  AdminEntity({
    required this.imageUrl,
    required this.name,
    required this.instagramUrl,
    required this.linkedInUrl,
    required this.facebookInUrl,
    this.position = '',
    this.isMe = false,
    this.button,
  });
}

class AdminsButtons extends StatelessWidget {
  final Function() inventationButton;
  final Function() addPersonButton;
  const AdminsButtons({
    Key? key,
    required this.inventationButton,
    required this.addPersonButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 12),
        Expanded(
          child: LongFilledButton(
            buttonColor: AppColors.green.withOpacity(0.2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/icons/copy.svg',
                  color: AppColors.green,
                ),
                // SizedBox(width: 8),
                Text(
                  'Copy Inventation Link',
                  style:
                      AppTextStyles.medium14pt.copyWith(color: AppColors.green),
                )
              ],
            ),
            onPressed: () => inventationButton,
            height: 40,
          ),
        ),
        SizedBox(width: 8),
        LongFilledButton(
          buttonColor: AppColors.green.withOpacity(0.2),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/icons/plus_icon.svg',
                  color: AppColors.green,
                ),
                SizedBox(width: 8),
                Text(
                  'Add person',
                  style:
                      AppTextStyles.medium14pt.copyWith(color: AppColors.green),
                )
              ],
            ),
          ),
          onPressed: () => addPersonButton,
          height: 40,
        ),
        SizedBox(width: 12),
      ],
    );
  }
}

class ParticipantButtons extends StatelessWidget {
  final Function() inventationButton;
  const ParticipantButtons({
    Key? key,
    required this.inventationButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 12),
        Expanded(
          child: LongFilledButton(
            buttonColor: AppColors.green.withOpacity(0.2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/icons/copy.svg',
                  color: AppColors.green,
                ),
                // SizedBox(width: 8),
                Text(
                  'Copy Inventation Link',
                  style:
                      AppTextStyles.medium14pt.copyWith(color: AppColors.green),
                )
              ],
            ),
            onPressed: () => inventationButton,
            height: 40,
          ),
        ),
        SizedBox(width: 12),
      ],
    );
  }
}
