import 'package:flutter/material.dart';
import 'package:n_plus_one/presentation/ui_kit/constants/colors.dart';

class CoverWithImageWidget extends StatelessWidget {
  final String coverUrl;
  final String imageUrl;
  const CoverWithImageWidget({
    Key? key,
    required this.coverUrl,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        // Cover
        Container(
          width: MediaQuery.of(context).size.width,
          height: 125,
          color: AppColors.gray3,
          child: Image.network(
            coverUrl,
            fit: BoxFit.cover,
          ),
        ),

        // Image
        Positioned(
          top: 68,
          left: 12,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Container(
              width: 112,
              height: 112,
              color: AppColors.gray2nd,
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
