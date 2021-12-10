import 'package:flutter/material.dart';
import 'package:n_plus_one/presentation/ui_kit/colors/colors.dart';

class PostedTransactionsWidget extends StatelessWidget {
  const PostedTransactionsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 20),
          width: MediaQuery.of(context).size.width,
          color: AppColors.gray1,
          child: Column(
            children: [
              Row(
                children: [
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(24),
                        child: Container(
                          width: 48,
                          height: 48,
                          color: AppColors.gray3,
                          child: Image.network(
                              'https://i.ibb.co/k99xwpR/easy-ofices.png'),
                        ),
                      ),
                      const SizedBox(width: 12),
                    ],
                  )
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
