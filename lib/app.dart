import 'package:flutter/material.dart';
import 'package:grau/pages/home_page.dart';
import 'package:grau/theme.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: theme.instance,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
              brightness: theme.instance.dark_theme
                  ? Brightness.dark
                  : Brightness.light),
          home: home(),
        );
      },
    );
  }
}
