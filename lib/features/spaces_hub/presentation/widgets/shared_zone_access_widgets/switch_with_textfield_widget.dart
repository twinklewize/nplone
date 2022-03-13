import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:n_plus_one/core/ui_kit/constants/colors.dart';
import 'package:n_plus_one/core/ui_kit/constants/text_styles.dart';

class SwitchWithTextfieldWidget extends StatefulWidget {
  final Function(int value) onTimeSwitch;
  final int timeSwitchState;
  final bool activeState;
  final Function(String value) onTextSubmitted;
  final bool withDollarSign;

  SwitchWithTextfieldWidget({
    Key? key,
    required this.activeState,
    required this.onTimeSwitch,
    required this.onTextSubmitted,
    required this.timeSwitchState,
    required this.withDollarSign,
  }) : super(key: key);

  @override
  State<SwitchWithTextfieldWidget> createState() =>
      _SwitchWithTextfieldWidgetState();
}

class _SwitchWithTextfieldWidgetState extends State<SwitchWithTextfieldWidget> {
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
                ? AppColors.gray3rd
                : AppColors.gray3rd.withOpacity(0.2),
            backgroundColor: widget.activeState
                ? AppColors.gray3
                : AppColors.gray3.withOpacity(0.2),
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
              style: AppTextStyles.regular16pt,
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
