import 'package:flutter/material.dart';
import 'package:grau/switch.dart';
import 'KtM_page.dart';
import 'MtK_page.dart';

class speed extends StatefulWidget {
  const speed({super.key});

  @override
  State<speed> createState() => _speedState();
}

class _speedState extends State<speed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Conversor de Velocidade'),
        actions: [switch_state()],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ktm()),
                  );
                },
                child: Text('km/h -> m/h')),
            OutlinedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => mtk()),
                  );
                },
                child: Text('m/h -> km/h'))
          ],
        ),
      ),
    );
  }
}
