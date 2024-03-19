import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum TextStyles {
  xsmall,
  xxsmall,
  small,
  medium,
  large,
  slarge,
  xlarge,
}

class TextStyleConstants {
  static const double xxsmallFontSize = 8.0;
  static const double xsmallFontSize = 14.0;
  static const double smallFontSize = 14.0;
  static const double mediumFontSize = 16.0;
  static const double largeFontSize = 20.0;
  static const double slargeFontSize = 25.0;
  static const double xlargeFontSize = 28.0;

  static TextStyle getStyle({
    required TextStyles textStyle,
    Color? color,
    FontWeight? fontWeight,
  }) {
    double fontSize;
    switch (textStyle) {
      case TextStyles.xxsmall:
        fontSize = xxsmallFontSize;
        break;
      case TextStyles.xsmall:
        fontSize = xsmallFontSize;
        break;
      case TextStyles.small:
        fontSize = smallFontSize;
        break;
      case TextStyles.medium:
        fontSize = mediumFontSize;
        break;
      case TextStyles.large:
        fontSize = largeFontSize;
        break;
      case TextStyles.slarge:
        fontSize = slargeFontSize;
        break;
      case TextStyles.xlarge:
        fontSize = xlargeFontSize;
        break;
      default:
        fontSize = mediumFontSize;
    }

    return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight ?? FontWeight.normal,
      color: color ?? Colors.black,
    );
  }
}

class UniversalText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;

  const UniversalText(
    this.text, {
    Key? key,
    this.style,
    this.textAlign,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UniversalTextController>(
      init: UniversalTextController(),
      builder: (controller) {
        return Text(
          text,
          style: style ?? TextStyle(fontSize: controller.fontSize),
          textAlign: textAlign ?? TextAlign.center,
        );
      },
    );
  }
}

class UniversalTextController extends GetxController {
  double fontSize = 16.0;

  void increaseFontSize() {
    fontSize += 2.0;
    update();
  }

  void decreaseFontSize() {
    fontSize -= 2.0;
    update();
  }
}
