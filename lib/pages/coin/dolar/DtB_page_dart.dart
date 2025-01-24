import 'package:flutter/material.dart';

import '../../../switch.dart';

class dtb extends StatefulWidget {
  const dtb({super.key});

  @override
  State<dtb> createState() => _dtbState();
}

class _dtbState extends State<dtb> {
  String dolar_str = '';
  double bitcoin = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [switch_state()],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.loop),
          onPressed: () {
            setState(() {
              if (dolar_str.isNotEmpty) {
                try {
                  double dolar = double.parse(dolar_str);
                  bitcoin = dolar * 100000;
                } catch (e) {
                  bitcoin = 0.0;
                }
              }
            });
          },
        ),
        body: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                onChanged: (text) {
                  dolar_str = text;
                },
                decoration: InputDecoration(
                    labelText: 'Dólar -> Bitcoin', border: OutlineInputBorder()),
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 10,
              ),
              Text(style: TextStyle(fontSize: 50), '$bitcoin')
            ],
          ),
        ));
  }
}
