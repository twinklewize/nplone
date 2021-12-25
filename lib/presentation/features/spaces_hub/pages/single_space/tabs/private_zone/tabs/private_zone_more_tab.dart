import 'package:flutter/material.dart';
import 'package:n_plus_one/presentation/ui_kit/constants/text_styles.dart';

class PrivateZoneMoreTab extends StatelessWidget {
  PrivateZoneMoreTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'more',
        style: AppTextStyles.regular16pt,
      ),
    );
  }
}
