import 'package:flutter/material.dart';

import '../../../switch.dart';

class rtd extends StatefulWidget {
  const rtd({super.key});

  @override
  State<rtd> createState() => _rtdState();
}

class _rtdState extends State<rtd> {
  String real_str = '';
  double dolar = 0.0;

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
              if (real_str.isNotEmpty) {
                try {
                  double real = double.parse(real_str);
                  dolar = real / 6;
                } catch (e) {
                  dolar = 0.0;
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
                  real_str = text;
                },
                decoration: InputDecoration(
                    labelText: 'Real -> Dólar', border: OutlineInputBorder()),
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 10,
              ),
              Text(style: TextStyle(fontSize: 50), '$dolar')
            ],
          ),
        ));
  }
}
