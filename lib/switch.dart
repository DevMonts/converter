import 'package:flutter/material.dart';
import 'package:grau/theme.dart';

class switch_state extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Icon(Icons.sunny),
      Switch(
          value: theme.instance.dark_theme,
          onChanged: (value) {
            theme.instance.change();
          }),
      Icon(Icons.dark_mode)
    ]);
  }
}
