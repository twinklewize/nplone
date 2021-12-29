import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'list_tile_with_switch_widget.dart';
import 'switch_with_textfield_idget.dart';

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
        ListTileWithSwitchWidget(
            text: widget.text,
            switchState: widget.activeState,
            onSwitch: (value) {
              widget.onSwitch(value);
              setState(() {
                widget.activeState = value;
              });
            }),
        SwitchWithTextfieldWidget(
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
