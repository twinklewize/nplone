import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:n_plus_one/presentation/ui_kit/colors/colors.dart';
import 'package:n_plus_one/presentation/ui_kit/constants/text_styles.dart';
import 'package:n_plus_one/presentation/ui_kit/widgets/custom_sircle_avatar.dart';

class AdminEditPage extends StatelessWidget {
  const AdminEditPage({Key? key, required this.imageUrl, required this.name})
      : super(key: key);
  final String imageUrl;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.gray1,
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomCircleAvatar(imageUrl: imageUrl),
            const SizedBox(width: 8),
            Text(name, style: AppTextStyles.medium16pt),
          ],
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: AppColors.white,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: background_black,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 16, 12, 8),
            child: Text('Options', style: AppTextStyles.bold20pt),
          ),
          listTileWithSwitch(
            'See all transactions',
            true,
            (value) {},
          ),
          listTileWithSwitch(
            'Post transactions and news',
            true,
            (value) {},
          ),
          listTileWithSwitch(
            'Take part in financial actions',
            false,
            (value) {},
          ),
          listTileWithSwitch(
            'Comment posts and transactions',
            true,
            (value) {},
          ),
          listTileWithSwitch(
            'Edit zone info and Delete Posts',
            false,
            (value) {},
          ),
          listTileWithSwitch(
            'Delete/invite new people',
            true,
            (value) {},
          ),
          Divider(height: 1, color: AppColors.black),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 16, 12, 8),
            child: Text('Monetization', style: AppTextStyles.bold20pt),
          ),
          listTileWithSwitch(
            'Subscription fee',
            true,
            (value) {},
          ),
        ],
      ),
    );
  }

  Widget listTileWithSwitch(
      String text, bool switchState, Function(bool value) onSwitch) {
    return Column(
      children: [
        Divider(height: 1, color: AppColors.black),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(text, style: AppTextStyles.regular14pt),
              CupertinoSwitch(
                value: switchState,
                onChanged: (value) => onSwitch(value),
                activeColor: AppColors.green,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
