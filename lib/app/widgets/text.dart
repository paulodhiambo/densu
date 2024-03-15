import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
