import 'package:flutter/material.dart';
import 'package:grau/CtF_page.dart';
import 'package:grau/switch.dart';

import 'FtC_page.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Conversor de Grau'),
          actions: [switch_state()],
        ),
        body: Center(
            child: Container(
                child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ftc()),
                  );
                },
                child: Text(
                  'Celsius -> Fahrenheit',
                )),
            OutlinedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ctf()),
                  );
                },
                child: Text(
                  'Fahrenheit -> Celsius',
                )),
          ],
        ))));
  }
}
