import 'package:flutter/material.dart';
import '../../switch.dart';

class atk extends StatefulWidget {
  @override
  State<atk> createState() {
    return atkState();
  }
}

class atkState extends State<atk> {
  String a_str = '';
  double kg = 0.0;

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
                if (a_str.isNotEmpty) {
                  try {
                    double a = double.parse(a_str);
                    kg = a * 14.688;
                  } catch (e) {
                    kg = 0.0;
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
                    a_str = text;
                  },
                  decoration: InputDecoration(
                      labelText: 'Arroba -> Quilo',
                      border: OutlineInputBorder()),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 10),
                Text(style: TextStyle(fontSize: 50), '$kg kg')
              ],
            )));
  }
}
