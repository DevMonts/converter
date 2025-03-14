import 'package:flutter/material.dart';

class ctf extends StatefulWidget {
  @override
  State<ctf> createState() {
    return ctfState();
  }
}

class ctfState extends State<ctf> {
  String celsius_str = '';
  double fahrenheit = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.loop),
            onPressed: () {
              setState(() {
                if (celsius_str.isNotEmpty) {
                  try {
                    double celsius = double.parse(celsius_str);
                    fahrenheit = (celsius * 9 / 5) + 32;
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
                    celsius_str = text;
                  },
                  decoration: InputDecoration(
                      labelText: 'Celsius -> Fahrenheit',
                      border: OutlineInputBorder()),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 10),
                Text(style: TextStyle(fontSize: 50), '$fahrenheit°F')
              ],
            )));
  }
}
