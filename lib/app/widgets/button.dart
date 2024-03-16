import 'package:densu/app/widgets/text.dart';
import 'package:flutter/material.dart';

class UniversalButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;
  final Color textColor;
  final double borderRadius;
  final double paddingVertical;
  final double paddingHorizontal;

  const UniversalButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.color = Colors.white,
    this.textColor = Colors.black,
    this.borderRadius = 10.0,
    this.paddingVertical = 12.0,
    this.paddingHorizontal = 16.0,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          foregroundColor: textColor,
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          padding: EdgeInsets.symmetric(
            vertical: paddingVertical,
            horizontal: paddingHorizontal,
          ),
        ),
        child: Text(
          text,
          style: TextStyleConstants.getStyle(
            textStyle: TextStyles.medium,
            color: textColor,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
