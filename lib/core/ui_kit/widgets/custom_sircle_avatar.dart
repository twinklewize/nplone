import 'package:flutter/material.dart';
import 'package:n_plus_one/core/ui_kit/constants/colors.dart';

class CustomCircleAvatar extends StatelessWidget {
  const CustomCircleAvatar({Key? key, required this.imageUrl})
      : super(key: key);
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 20.0,
      backgroundColor: AppColors.gray2nd,
      backgroundImage: NetworkImage(imageUrl),
    );
  }
}
