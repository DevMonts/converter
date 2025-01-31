import 'package:flutter/material.dart';

import 'celsius/CtF_page.dart';
import 'celsius/CtK_page.dart';
import 'fahrenheit/FtC_page.dart';
import 'fahrenheit/FtK_page.dart';
import 'kelvin/KtC_page.dart';
import 'kelvin/KtF_page.dart';

class degree extends StatefulWidget {
  const degree({super.key});

  @override
  State<degree> createState() => _degreeState();
}

class _degreeState extends State<degree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        OutlinedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => ctf()),
              );
            },
            child: Text(
              'Celsius -> Fahrenheit',
            )), //c>f
        OutlinedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => ctk()),
              );
            },
            child: Text(
              'Celsius -> Kelvin',
            )), //c>k
        SizedBox(height: 10),
        OutlinedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => ftc()),
              );
            },
            child: Text(
              'Fahrenheit -> Celsius',
            )), //f>c
        OutlinedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => ftk()),
              );
            },
            child: Text(
              'Fahrenheit -> Kelvin',
            )), //f>k
        SizedBox(height: 10),
        OutlinedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => ktc()),
              );
            },
            child: Text(
              'Kelvin -> Celsius',
            )), //k>c
        OutlinedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => ktf()),
              );
            },
            child: Text(
              'Kelvin -> Fahrenheit',
            )), //k>f
      ],
    )));
  }
}
