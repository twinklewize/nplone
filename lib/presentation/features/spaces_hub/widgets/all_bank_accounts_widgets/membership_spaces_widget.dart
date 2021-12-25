import 'package:flutter/material.dart';
import 'package:n_plus_one/presentation/ui_kit/constants/text_styles.dart';

class MembershipSpacesWidget extends StatelessWidget {
  const MembershipSpacesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height / 3,
        ),
        Text(
          "Страница в разработке",
          style: AppTextStyles.regular14pt,
        ),
      ],
    );
  }
}
