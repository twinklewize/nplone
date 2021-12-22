import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_svg/svg.dart';
import 'package:n_plus_one/presentation/ui_kit/colors/colors.dart';
import 'package:n_plus_one/presentation/ui_kit/constants/text_styles.dart';
import 'package:n_plus_one/presentation/ui_kit/widgets/long_filled_button.dart';
import 'package:n_plus_one/presentation/ui_kit/widgets/textfield.dart';

class SpaceCreationPage extends StatefulWidget {
  static const routeName = '/space-creation';
  SpaceCreationPage({Key? key}) : super(key: key);

  @override
  State<SpaceCreationPage> createState() => _SpaceCreationPageState();
}

class _SpaceCreationPageState extends State<SpaceCreationPage> {
  TextEditingController nameEditingController = TextEditingController();
  TextEditingController addressEditingController = TextEditingController();
  TextEditingController websiteEditingController = TextEditingController();
  TextEditingController desriptionEditingController = TextEditingController();

  var pickedAvatarImage;
  var pickedTopicImage;

  Future getAvatarImage() async {
    ImagePicker imagePicker = ImagePicker();
    var pickedImage = await imagePicker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        pickedAvatarImage = File(pickedImage.path);
      });
    }
  }

  Future getTopicImage() async {
    ImagePicker imagePicker = ImagePicker();
    var pickedImage = await imagePicker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        pickedTopicImage = File(pickedImage.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.gray1,
      appBar: AppBar(
        title: Text('New Space', style: AppTextStyles.medium16pt),
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
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                child: Stack(
                  children: [
                    GestureDetector(
                      onTap: () async {
                        await getTopicImage();
                      },
                      child: pickedTopicImage == null
                          ? SvgPicture.asset(
                              'assets/images/backbround_no_image.svg',
                              width: MediaQuery.of(context).size.width,
                            )
                          : Container(
                              height: 125,
                              width: MediaQuery.of(context).size.width,
                              child: Image.file(
                                pickedTopicImage,
                                fit: BoxFit.cover,
                              ),
                            ),
                    ),
                    Positioned(
                      top: 69,
                      child: GestureDetector(
                        onTap: () async {
                          await getAvatarImage();
                        },
                        child: pickedAvatarImage == null
                            ? SvgPicture.asset(
                                'assets/images/space_avatar_no_image.svg',
                                width: 132,
                              )
                            : Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 12),
                                child: Container(
                                  height: 112,
                                  width: 112,
                                  child: Image.file(
                                    pickedAvatarImage,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 32),
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Text(
                  'Space name',
                  style: AppTextStyles.regular16pt,
                ),
              ),
              SizedBox(height: 4),
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 12),
                child: MyTextField(
                  onChanged: (value) => print(value),
                  controller: nameEditingController,
                  fillColor: AppColors.gray1,
                  labelText: 'Space name',
                  maxLines: 1,
                  minLines: 1,
                  keyboardType: TextInputType.emailAddress,
                  inputTextColor: Colors.white,
                ),
              ),
              SizedBox(height: 26),
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Text(
                  'Address (optional)',
                  style: AppTextStyles.regular16pt,
                ),
              ),
              SizedBox(height: 4),
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 12),
                child: MyTextField(
                  onChanged: (value) => print(value),
                  controller: addressEditingController,
                  fillColor: AppColors.gray1,
                  labelText: 'Address here',
                  maxLines: 1,
                  minLines: 1,
                  keyboardType: TextInputType.emailAddress,
                  inputTextColor: Colors.white,
                ),
              ),
              SizedBox(height: 26),
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Text(
                  'Website (optional)',
                  style: AppTextStyles.regular16pt,
                ),
              ),
              SizedBox(height: 4),
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 12),
                child: MyTextField(
                  onChanged: (value) => print(value),
                  controller: websiteEditingController,
                  fillColor: AppColors.gray1,
                  labelText: 'URL here',
                  maxLines: 1,
                  minLines: 1,
                  keyboardType: TextInputType.emailAddress,
                  inputTextColor: Colors.white,
                ),
              ),
              SizedBox(height: 26),
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Text(
                  'Desription (optional)',
                  style: AppTextStyles.regular16pt,
                ),
              ),
              SizedBox(height: 4),
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 12),
                child: MyTextField(
                  onChanged: (value) => print(value),
                  controller: desriptionEditingController,
                  fillColor: AppColors.gray1,
                  labelText: 'Desription here',
                  maxLines: 20,
                  minLines: 1,
                  keyboardType: TextInputType.emailAddress,
                  inputTextColor: Colors.white,
                ),
              ),
              SizedBox(height: 56),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: LongFilledButton(
                  buttonColor: AppColors.blue,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.check, color: Colors.white),
                      SizedBox(width: 12),
                      Text(
                        'Create Space',
                        style: AppTextStyles.regular16pt,
                      ),
                    ],
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
