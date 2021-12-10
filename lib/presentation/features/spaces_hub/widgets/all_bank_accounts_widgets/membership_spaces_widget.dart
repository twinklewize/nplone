import 'package:flutter/material.dart';

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
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
