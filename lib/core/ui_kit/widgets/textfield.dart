import 'package:flutter/material.dart';
import 'package:n_plus_one/core/ui_kit/constants/colors.dart';
import 'package:n_plus_one/core/ui_kit/constants/text_styles.dart';

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
  final String? Function(String? value)? validationFunction;
  final String? errorText;
  final bool obscureText;
  final bool enableSuggestions;
  final bool autocorrect;

  MyTextField({
    required this.onChanged,
    required this.controller,
    required this.fillColor,
    required this.labelText,
    required this.keyboardType,
    required this.maxLines,
    required this.minLines,
    this.textInputAction = TextInputAction.next,
    required this.inputTextColor,
    this.validationFunction,
    this.errorText,
    this.obscureText = false,
    this.enableSuggestions = true,
    this.autocorrect = true,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (val) {
        onChanged(val);
      },
      validator: (value) {
        if (validationFunction != null) {
          return validationFunction!(value);
        }
      },
      controller: controller,
      obscureText: obscureText,
      cursorColor: AppColors.white,
      maxLines: maxLines,
      minLines: minLines,
      cursorRadius: Radius.circular(2),
      textInputAction: textInputAction,
      style: AppTextStyles.regular14pt.copyWith(color: inputTextColor),
      decoration: InputDecoration(
        errorStyle: TextStyle(color: AppColors.red),
        isDense: true,
        errorText: errorText,
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
        labelStyle: AppTextStyles.regular16pt.copyWith(
          color: AppColors.frontGray1,
        ),
        prefixText: '    ',
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: AppColors.frontGray1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: AppColors.blue),
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
      enableSuggestions: enableSuggestions,
      autocorrect: autocorrect,
    );
  }
}
