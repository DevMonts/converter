import 'package:flutter/material.dart';
import '../../../switch.dart';

class ftk extends StatefulWidget {
  @override
  State<ftk> createState() {
    return ftkState();
  }
}

class ftkState extends State<ftk> {
  String fahrenheit_str = '';
  double kelvin = 0.0;

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
                if (fahrenheit_str.isNotEmpty) {
                  try {
                    double fahrenheit = double.parse(fahrenheit_str);
                    kelvin = ((fahrenheit - 32) * 5 / 9 + 273.15);
                  } catch (e) {
                    kelvin = 0.0;
                  }
                }
              });
            }),
        body: Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  onChanged: (text) {
                    fahrenheit_str = text;
                  },
                  decoration: InputDecoration(
                      labelText: 'Fahrenheit -> Kelvin',
                      border: OutlineInputBorder()),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 50),
                Text(style: TextStyle(fontSize: 50), '$kelvin°K')
              ],
            )));
  }
}
