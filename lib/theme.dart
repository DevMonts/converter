import 'package:flutter/material.dart';

class theme extends ChangeNotifier {
  static theme instance = theme();
  bool dark_theme = false;

  change() {
    dark_theme = !dark_theme;
    notifyListeners();
  }
}
