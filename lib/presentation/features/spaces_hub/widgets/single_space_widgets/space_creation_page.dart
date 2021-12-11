import 'package:flutter/material.dart';
import 'package:n_plus_one/presentation/ui_kit/colors/colors.dart';
import 'package:n_plus_one/presentation/ui_kit/constants/text_styles.dart';

class SpaceCreationPage extends StatelessWidget {
  const SpaceCreationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.gray1,
      appBar: AppBar(
        title: Text('Create a space', style: AppTextStyles.medium16pt),
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
      body: Container(),
    );
  }
}
