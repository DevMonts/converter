import 'package:flutter/material.dart';

class ktc extends StatefulWidget {
  @override
  State<ktc> createState() {
    return ktcState();
  }
}

class ktcState extends State<ktc> {
  String kelvin_str = '';
  double celsius = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.loop),
            onPressed: () {
              setState(() {
                if (kelvin_str.isNotEmpty) {
                  try {
                    double kelvin = double.parse(kelvin_str);
                    celsius = kelvin - 273.15;
                  } catch (e) {
                    celsius = 0.0;
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
                      labelText: 'Kelvin -> Celsius',
                      border: OutlineInputBorder()),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 10),
                Text(style: TextStyle(fontSize: 50), '$celsius°C')
              ],
            )));
  }
}
