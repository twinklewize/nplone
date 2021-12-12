import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:n_plus_one/presentation/ui_kit/colors/colors.dart';
import 'package:n_plus_one/presentation/ui_kit/constants/text_styles.dart';

class DescriptionWidget extends StatelessWidget {
  final Function() editFunction = () {};
  final Function() shareFunction = () {};

  final String coverUrl = 'https://i.ibb.co/bBPPP4C/Backbround-image.jpg';
  final String imageUrl = 'https://i.ibb.co/xMYCpbC/pig.png';

  final String street = 'Germany, Berlin, Green Street 7a';
  final String link = 'https://tau.green/';

  final String title = 'My First Space';
  final String text =
      'We work to be the best international design and architecture studio. Having gathered the best specialists in our team, we embody your dreams in our unique style. Every day we grow in our business culture, creating a comfortable environment for your life and business. \n\nWe are inspired and improved at international professional exhibitions and specialized events. We personally communicate with representatives of exclusive furniture brands and often use furniture made according to individual sketches in our projects. \n\nOffering a unique method of working with the customer and high-class service, we meet the aesthetic needs of customers. We take care of all worries, we give an opportunity to be in trend, making your life better and more beautiful.';

  DescriptionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CoverWithImageWidget(
            coverUrl: coverUrl,
            imageUrl: imageUrl,
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SmallButton(
                assetName: 'assets/icons/edit_icon.svg',
                text: 'Edit',
                onPressed: editFunction,
              ),
              const SizedBox(width: 8),
              SmallButton(
                assetName: 'assets/icons/share_icon.svg',
                onPressed: shareFunction,
              ),
              const SizedBox(width: 12),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
            child: Text(title, style: AppTextStyles.bold24pt),
          ),
          TextWithIcon('assets/icons/place_icon.svg', street),
          const SizedBox(height: 12),
          TextWithIcon('assets/icons/screp_icon.svg', link),
          const SizedBox(height: 16),
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

  Widget TextWithIcon(String icon, String text) {
    return Row(
      children: [
        const SizedBox(width: 12),
        SvgPicture.asset(icon, color: AppColors.green2),
        const SizedBox(width: 8),
        Text(
          text,
          style: AppTextStyles.regular14pt.copyWith(color: AppColors.green2),
        ),
      ],
    );
  }
}

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
        Container(
          width: MediaQuery.of(context).size.width,
          height: 125,
          color: AppColors.gray3,
          child: Image.network(
            coverUrl,
            fit: BoxFit.cover,
          ),
        ),
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

class SmallButton extends StatelessWidget {
  final String assetName;
  final String text;
  final Function() onPressed;
  final Color color;
  final Color textColor;
  const SmallButton({
    Key? key,
    required this.onPressed,
    this.assetName = '',
    this.text = '',
    this.color = AppColors.white10,
    this.textColor = AppColors.gray2nd,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () => onPressed(),
          borderRadius: BorderRadius.circular(6),
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 4,
            ),
            height: 32,
            child: Row(
              children: [
                assetName == ''
                    ? SizedBox()
                    : SvgPicture.asset(
                        assetName,
                        color: textColor,
                      ),
                text != '' && assetName != ''
                    ? const SizedBox(width: 4)
                    : const SizedBox(width: 0),
                text != ''
                    ? Text(
                        text,
                        style:
                            AppTextStyles.medium14pt.copyWith(color: textColor),
                      )
                    : const SizedBox(width: 0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
