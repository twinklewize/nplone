import 'package:flutter/material.dart';

class AnimatedBar extends StatelessWidget {
  final AnimationController animationController;
  final int position;
  final int currentIndex;

  const AnimatedBar({
    Key? key,
    required this.animationController,
    required this.position,
    required this.currentIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Stack(
              children: <Widget>[
                _buildContainer(
                  double.infinity,
                  position < currentIndex
                      ? Colors.white
                      : Colors.white.withOpacity(0.4),
                ),
                position == currentIndex
                    ? AnimatedBuilder(
                        animation: animationController,
                        builder: (context, child) {
                          return _buildContainer(
                            constraints.maxWidth * animationController.value,
                            Colors.white,
                          );
                        },
                      )
                    : const SizedBox.shrink(),
              ],
            );
          },
        ),
      ),
    );
  }

  Container _buildContainer(double width, Color color) {
    return Container(
      height: 4,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(3.0),
      ),
    );
  }
}
