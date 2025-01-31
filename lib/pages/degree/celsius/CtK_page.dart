import 'package:flutter/material.dart';

class ctk extends StatefulWidget {
  @override
  State<ctk> createState() {
    return ctkState();
  }
}

class ctkState extends State<ctk> {
  String celsius_str = '';
  double kelvin = 0.0;

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
                    kelvin = celsius + 273.15;
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
                    celsius_str = text;
                  },
                  decoration: InputDecoration(
                      labelText: 'Celsius -> Kelvin',
                      border: OutlineInputBorder()),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 10),
                Text(style: TextStyle(fontSize: 50), '$kelvin°K')
              ],
            )));
  }
}
