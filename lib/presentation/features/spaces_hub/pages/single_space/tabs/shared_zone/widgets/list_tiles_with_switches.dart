import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:n_plus_one/presentation/ui_kit/colors/colors.dart';
import 'package:n_plus_one/presentation/ui_kit/constants/text_styles.dart';

class MonetizationWidget extends StatefulWidget {
  final Function(bool value) onSwitch;
  final Function(int value) onTimeSwitch;
  final Function(String value) onTextSubmitted;
  final int timeSwitchState;
  final bool withDollarSign;
  final String text;
  bool activeState;
  MonetizationWidget({
    Key? key,
    required this.activeState,
    required this.onSwitch,
    required this.onTimeSwitch,
    required this.onTextSubmitted,
    required this.timeSwitchState,
    required this.text,
    this.withDollarSign = true,
  }) : super(key: key);

  @override
  State<MonetizationWidget> createState() => _MonetizationWidgetState();
}

class _MonetizationWidgetState extends State<MonetizationWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTileWithSwitch(
            text: widget.text,
            switchState: widget.activeState,
            onSwitch: (value) {
              widget.onSwitch(value);
              setState(() {
                widget.activeState = value;
              });
            }),
        SwitchWithTextField(
          withDollarSign: widget.withDollarSign,
          activeState: widget.activeState,
          timeSwitchState: widget.timeSwitchState,
          onTimeSwitch: widget.onTimeSwitch,
          onTextSubmitted: (String value) => widget.onTextSubmitted(value),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}

class ListTileWithSwitch extends StatefulWidget {
  ListTileWithSwitch({
    Key? key,
    required this.text,
    required this.switchState,
    required this.onSwitch,
  }) : super(key: key);

  final String text;
  final Function(bool value) onSwitch;
  bool switchState;

  @override
  State<ListTileWithSwitch> createState() => _ListTileWithSwitchState();
}

class _ListTileWithSwitchState extends State<ListTileWithSwitch> {
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

class SwitchWithTextField extends StatefulWidget {
  final Function(int value) onTimeSwitch;
  final int timeSwitchState;
  final bool activeState;
  final Function(String value) onTextSubmitted;
  final bool withDollarSign;

  SwitchWithTextField({
    Key? key,
    required this.activeState,
    required this.onTimeSwitch,
    required this.onTextSubmitted,
    required this.timeSwitchState,
    required this.withDollarSign,
  }) : super(key: key);

  @override
  State<SwitchWithTextField> createState() => _SwitchWithTextFieldState();
}

class _SwitchWithTextFieldState extends State<SwitchWithTextField> {
  late int segmentedControlGroupValue;
  final Map<int, Widget> myTabs = <int, Widget>{
    0: Text(
      "Per Once",
      style: AppTextStyles.medium14pt,
    ),
    1: Text(
      "Per Month",
      style: AppTextStyles.medium14pt,
    ),
  };

  final Map<int, Widget> myTabsUnActive = <int, Widget>{
    0: Text(
      "Per Once",
      style: AppTextStyles.medium14pt
          .copyWith(color: AppColors.white.withOpacity(0.8)),
    ),
    1: Text(
      "Per Month",
      style: AppTextStyles.medium14pt
          .copyWith(color: AppColors.white.withOpacity(0.8)),
    ),
  };

  @override
  void initState() {
    segmentedControlGroupValue = widget.timeSwitchState;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 12),
        CupertinoSlidingSegmentedControl(
            padding: EdgeInsets.all(4),
            thumbColor: widget.activeState
                ? AppColors.gray3
                : AppColors.gray3.withOpacity(0.2),
            backgroundColor: widget.activeState
                ? Color(0xFF434546)
                : Color(0xFF434546).withOpacity(0.2),
            groupValue: segmentedControlGroupValue,
            children: widget.activeState ? myTabs : myTabsUnActive,
            onValueChanged: (i) {
              widget.onTimeSwitch(i as int);
              setState(() {
                if (widget.activeState) segmentedControlGroupValue = i;
              });
            }),
        const SizedBox(width: 16),
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 12),
            height: 36,
            width: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: AppColors.white.withOpacity(0.25),
                )),
            child: TextField(
              onSubmitted: (value) => widget.onTextSubmitted(value),
              enabled: widget.activeState,
              style: TextStyle(color: AppColors.white),
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: widget.withDollarSign ? '\$ 10' : '1',
                hintStyle: AppTextStyles.regular16pt.copyWith(
                  color: AppColors.white.withOpacity(0.5),
                ),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),
        ),
        const SizedBox(width: 12),
      ],
    );
  }
}
