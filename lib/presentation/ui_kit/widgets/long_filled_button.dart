import 'package:flutter/material.dart';

class LongFilledButton extends StatelessWidget {
  final Color buttonColor;
  final Widget child;
  final Function() onPressed;

  LongFilledButton({
    required this.buttonColor,
    required this.child,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(8),
      elevation: 0,
      child: Container(
        height: 52,
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
      ),
    );
  }
}
