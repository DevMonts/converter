import 'package:flutter/material.dart';
import 'package:grau/pages/degree/degree_page.dart';
import 'package:grau/pages/speed/speed_page.dart';
import 'package:grau/pages/weight/weight_page.dart';
import 'package:grau/switch.dart';

import 'coin/coin_page.dart';

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
          title: Text('Conversores'),
          actions: [switch_state()],
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => degree()),
                  );
                },
                child: Text(
                  'Grau',
                )),
            OutlinedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => coin()),
                  );
                },
                child: Text(
                  'Moeda',
                )),
            OutlinedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => weight()),
                  );
                },
                child: Text('Peso')),
            OutlinedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => speed()),
                  );
                },
                child: Text('Velocidade')),
          ],
        )));
  }
}
