import 'package:flutter/material.dart';
import '../../../switch.dart';

class ktf extends StatefulWidget {
  @override
  State<ktf> createState() {
    return ktfState();
  }
}

class ktfState extends State<ktf> {
  String kelvin_str = '';
  double fahrenheit = 0.0;

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
                if (kelvin_str.isNotEmpty) {
                  try {
                    double kelvin = double.parse(kelvin_str);
                    fahrenheit = (kelvin - 273.15) * 9 / 5 + 32;
                  } catch (e) {
                    fahrenheit = 0.0;
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
                    kelvin_str = text;
                  },
                  decoration: InputDecoration(
                      labelText: 'Kelvin -> Fahrenheit',
                      border: OutlineInputBorder()),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 10),
                Text(style: TextStyle(fontSize: 50), '$fahrenheit°F')
              ],
            )));
  }
}
