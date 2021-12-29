import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:n_plus_one/core/ui_kit/constants/colors.dart';
import 'package:n_plus_one/core/ui_kit/constants/text_styles.dart';

class ListTileWithSwitchWidget extends StatefulWidget {
  ListTileWithSwitchWidget({
    Key? key,
    required this.text,
    required this.switchState,
    required this.onSwitch,
  }) : super(key: key);

  final String text;
  final Function(bool value) onSwitch;
  bool switchState;

  @override
  State<ListTileWithSwitchWidget> createState() =>
      _ListTileWithSwitchWidgetState();
}

class _ListTileWithSwitchWidgetState extends State<ListTileWithSwitchWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(height: 1, color: AppColors.line),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(widget.text, style: AppTextStyles.regular14pt),
              CupertinoSwitch(
                value: widget.switchState,
                onChanged: (value) {
                  widget.onSwitch(value);
                  setState(() {
                    widget.switchState = value;
                  });
                },
                activeColor: AppColors.green,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
