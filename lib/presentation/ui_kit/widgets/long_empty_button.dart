import 'package:flutter/material.dart';

class LongEmptyButton extends StatelessWidget {
  final Color buttonColor;
  final String textValue;
  final Color textColor;
  final Function() onPressed;

  LongEmptyButton({
    required this.buttonColor,
    required this.textValue,
    required this.textColor,
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
          border: Border.all(color: Color.fromRGBO(255, 255, 255, 0.2)),
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () => onPressed(),
            borderRadius: BorderRadius.circular(8),
            child: Center(
              child: Text(
                textValue,
                style: TextStyle(
                  color: textColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
