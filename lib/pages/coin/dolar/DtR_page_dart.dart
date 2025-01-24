import 'package:flutter/material.dart';

import '../../../switch.dart';

class dtr extends StatefulWidget {
  const dtr({super.key});

  @override
  State<dtr> createState() => _dtrState();
}

class _dtrState extends State<dtr> {
  String dolar_str = '';
  double real = 0.0;

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
                  real = dolar * 6;
                } catch (e) {
                  real = 0.0;
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
                    labelText: 'Dólar -> Real', border: OutlineInputBorder()),
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 10,
              ),
              Text(style: TextStyle(fontSize: 50), '$real')
            ],
          ),
        ));
  }
}
