import 'package:flutter/material.dart';
import 'package:n_plus_one/presentation/ui_kit/colors/colors.dart';
import 'package:n_plus_one/presentation/ui_kit/constants/text_styles.dart';
import 'package:n_plus_one/presentation/ui_kit/widgets/small_button.dart';
import 'widgets/cover_with_image_widget.dart';
import 'widgets/text_with_icon_widget.dart';

class DescriptionTab extends StatelessWidget {
  final Function() editFunction = () {};
  final Function() shareFunction = () {};

  final String coverUrl = 'https://i.ibb.co/bBPPP4C/Backbround-image.jpg';
  final String imageUrl = 'https://i.ibb.co/xMYCpbC/pig.png';

  final String street = 'Germany, Berlin, Green Street 7a';
  final String link = 'https://tau.green/';

  final String title = 'My First Space';
  final String text =
      'We work to be the best international design and architecture studio. Having gathered the best specialists in our team, we embody your dreams in our unique style. Every day we grow in our business culture, creating a comfortable environment for your life and business. \n\nWe are inspired and improved at international professional exhibitions and specialized events. We personally communicate with representatives of exclusive furniture brands and often use furniture made according to individual sketches in our projects. \n\nOffering a unique method of working with the customer and high-class service, we meet the aesthetic needs of customers. We take care of all worries, we give an opportunity to be in trend, making your life better and more beautiful.';

  DescriptionTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Cover with Image
          CoverWithImageWidget(
            coverUrl: coverUrl,
            imageUrl: imageUrl,
          ),
          const SizedBox(height: 16),

          // Buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SmallButton(
                assetName: 'assets/icons/edit_icon.svg',
                text: 'Edit',
                onPressed: editFunction,
                color: AppColors.white.withOpacity(0.1),
              ),
              const SizedBox(width: 8),
              SmallButton(
                assetName: 'assets/icons/share_icon.svg',
                onPressed: shareFunction,
                color: AppColors.white.withOpacity(0.1),
              ),
              const SizedBox(width: 12),
            ],
          ),

          // Title
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
            child: Text(title, style: AppTextStyles.bold24pt),
          ),

          // Street and link
          TextWithIcon(icon: 'assets/icons/place_icon.svg', text: street),
          const SizedBox(height: 12),
          TextWithIcon(icon: 'assets/icons/screp.svg', text: link),
          const SizedBox(height: 16),

          // Text
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              text,
              style: AppTextStyles.regular14pt,
            ),
          ),
          const SizedBox(height: 32),
        ],
      ),
    );
  }
}
