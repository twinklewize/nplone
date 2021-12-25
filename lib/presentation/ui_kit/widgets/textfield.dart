import 'package:flutter/material.dart';
import 'package:n_plus_one/presentation/ui_kit/constants/colors.dart';
import 'package:n_plus_one/presentation/ui_kit/constants/text_styles.dart';

class MyTextField extends StatelessWidget {
  final Function(String?) onChanged;
  final TextEditingController controller;
  final Color fillColor;
  final String labelText;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final int? maxLines;
  final int? minLines;
  final Color inputTextColor;

  MyTextField({
    required this.onChanged,
    required this.controller,
    required this.fillColor,
    required this.labelText,
    required this.keyboardType,
    this.textInputAction = TextInputAction.next,
    required this.maxLines,
    required this.minLines,
    required this.inputTextColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (val) {
        onChanged(val);
      },
      controller: controller,
      cursorColor: AppColors.blue,
      maxLines: maxLines,
      minLines: minLines,
      cursorRadius: Radius.circular(2),
      textInputAction: textInputAction,
      style: TextStyle(color: inputTextColor),
      decoration: InputDecoration(
        isDense: true,
        contentPadding: // Text Field height
            EdgeInsets.only(
          top: 14,
          bottom: 14,
          right: 14,
          //left: 14,
        ),
        fillColor: fillColor,
        filled: true,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        labelText: "     " + labelText,
        labelStyle: AppTextStyles.medium16pt.copyWith(
          color: AppColors.frontGray1,
        ),
        prefixText: '    ',
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: AppColors.frontGray1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: AppColors.frontGray1),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: AppColors.frontGray1),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: AppColors.frontGray1),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            color: Colors.red,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            color: Colors.red,
          ),
        ),
      ),
      keyboardType: keyboardType,
    );
  }
}
