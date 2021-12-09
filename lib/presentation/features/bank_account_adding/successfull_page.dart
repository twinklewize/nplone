import 'package:flutter/material.dart';
import 'package:n_plus_one/presentation/ui_kit/colors/colors.dart';
import 'package:n_plus_one/presentation/ui_kit/constants/text_styles.dart';

class SuccessfullPage extends StatelessWidget {
  const SuccessfullPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.gray1,
      appBar: AppBar(
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
      body: GestureDetector(
        onTapDown: (_) {
          // TODO: Переход на следующую страницу
        },
        child: Center(
          child: Column(
            children: [
              Spacer(),
              Image.asset('assets/images/successfull_card_image.png'),
              const SizedBox(height: 16),
              SizedBox(
                width: MediaQuery.of(context).size.width - 80,
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
}
