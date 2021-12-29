import 'package:flutter/material.dart';
import 'package:n_plus_one/core/ui_kit/constants/colors.dart';
import 'package:n_plus_one/core/ui_kit/constants/text_styles.dart';

class SuccessfullPage extends StatelessWidget {
  static const routeName = '/bank-account-adding-success';
  const SuccessfullPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.gray1,
      appBar: appBar(context),
      body: GestureDetector(
        onTapDown: (_) {
          Navigator.pushReplacementNamed(
            context,
            '/spaces-hub',
          );
        },
        child: Center(
          child: Column(
            children: [
              Spacer(),

              // Image
              Image.asset('assets/images/successfull_card_image.png'),
              const SizedBox(height: 16),
              SizedBox(
                width: MediaQuery.of(context).size.width - 80,

                // Successfull Text
                child: Text(
                  'Accounts was successfully\n added and synced!',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.bold20pt,
                ),
              ),
              Spacer(),
              SizedBox(
                height: MediaQuery.of(context).padding.top +
                    AppBar().preferredSize.height,
              ),
            ],
          ),
        ),
      ),
    );
  }

  AppBar appBar(BuildContext context) {
    return AppBar(
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
    );
  }
}
