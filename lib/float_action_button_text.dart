import 'package:animated_float_action_button/bounce_in_left_container.dart';
import 'package:flutter/material.dart';

class FloatActionButtonText extends StatelessWidget {
  final String? text;
  final IconData? icon;
  final double textTop;
  final double textLeft;
  final VoidCallback? onPressed;
  const FloatActionButtonText({
    Key? key,
    this.icon,
    this.text,
    this.textLeft = -110,
    this.textTop = -10,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FloatingActionButton(
        onPressed: onPressed,
        child: Stack(
          overflow: Overflow.visible,
          children: [
            Icon(icon),
            Positioned(
              top: textTop,
              left: textLeft,
              child: BounceInLeftContainer(
                child: Card(
                  child: Container(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      text!,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
