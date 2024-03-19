import 'package:densu/app/widgets/text.dart';
import 'package:flutter/material.dart';

class CustomListTileWithSwitch extends StatelessWidget {
  final String titleText;
  final bool switchValue;
  final ValueChanged<bool>? onSwitchChanged;

  const CustomListTileWithSwitch({
    super.key,
    required this.titleText,
    required this.switchValue,
    required this.onSwitchChanged,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        titleText,
        style: TextStyleConstants.getStyle(
          textStyle: TextStyles.xsmall,
          fontWeight: FontWeight.w500,
        ),
      ),
      trailing: Transform.scale(
        scale: 0.7,
        child: Switch(
          value: switchValue,
          onChanged: onSwitchChanged,
        ),
      ),
    );
  }
}
