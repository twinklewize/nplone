import 'package:flutter/material.dart';

class LongFilledButton extends StatelessWidget {
  final Color buttonColor;
  final Widget child;
  final Function() onPressed;
  final double height;

  LongFilledButton({
    required this.buttonColor,
    required this.child,
    required this.onPressed,
    this.height = 52,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () => onPressed(),
          borderRadius: BorderRadius.circular(8),
          child: Center(
            child: child,
          ),
        ),
      ),
    );
  }
}
