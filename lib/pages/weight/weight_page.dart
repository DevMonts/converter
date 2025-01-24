import 'package:flutter/material.dart';
import 'package:grau/switch.dart';

import 'KtA_page.dart';
import 'AtK_page.dart';

class weight extends StatefulWidget {
  const weight({super.key});

  @override
  State<weight> createState() => _weightState();
}

class _weightState extends State<weight> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Conversor de Peso'),
        actions: [switch_state()],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => atk()),
                  );
                },
                child: Text('Arroba -> Quilo')),
            OutlinedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => kta()),
                  );
                },
                child: Text('Quilo -> Arroba'))
          ],
        ),
      ),
    );
  }
}
