import 'package:densu/app/widgets/text.dart';
import 'package:flutter/material.dart';


class UniversalTextInput extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final String? Function(String?)? validator;
  final bool obscureText;
  final IconData? prefixIcon;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final double borderRadius;
  final Function(String)? onFieldSubmitted;
  final Color? backgroundColor; // New property for background color

  const UniversalTextInput({
    Key? key,
    required this.controller,
    required this.label,
    this.validator,
    this.obscureText = false,
    this.prefixIcon,
    this.keyboardType = TextInputType.text,
    this.textInputAction = TextInputAction.done,
    this.onFieldSubmitted,
    this.borderRadius = 10.0,
    this.backgroundColor, // Initialize the new property
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      onFieldSubmitted: onFieldSubmitted,
      validator: validator,
      decoration: InputDecoration(
        hintText: label,
        hintStyle: TextStyleConstants.getStyle(
          textStyle: TextStyles.medium,
          color: Colors.black54,
          fontWeight: FontWeight.w400,
        ),
        prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        filled: true,
        // Fill the background with color
        fillColor: backgroundColor ?? Colors.transparent,
      ),
    );
  }
}
