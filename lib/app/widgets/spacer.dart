import 'package:flutter/material.dart';

enum SpacerSize { small, medium, large, xlarge }

class SpacerConstants {
  static const double xsmall = 5.0;
  static const double small = 10.0;
  static const double standard = 16.0;
  static const double medium = 20.0;
  static const double large = 40.0;
  static const double xlarge = 80.0;
}

class UniversalSpacer extends StatelessWidget {
  final double? width;
  final double? height;

  const UniversalSpacer({super.key, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
    );
  }
}
