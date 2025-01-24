import 'package:flutter/material.dart';

import '../../../switch.dart';

class dte extends StatefulWidget {
  const dte({super.key});

  @override
  State<dte> createState() => _dteState();
}

class _dteState extends State<dte> {
  String dolar_str = '';
  double euro = 0.0;

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
                  euro = dolar;
                } catch (e) {
                  euro = 0.0;
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
                    labelText: 'Dólar -> Euro', border: OutlineInputBorder()),
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 10,
              ),
              Text(style: TextStyle(fontSize: 50), '$euro')
            ],
          ),
        ));
  }
}
