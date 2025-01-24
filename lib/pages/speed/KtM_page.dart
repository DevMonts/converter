import 'package:flutter/material.dart';
import '../../switch.dart';

class ktm extends StatefulWidget {
  @override
  State<ktm> createState() {
    return ktmState();
  }
}

class ktmState extends State<ktm> {
  String kmh_str = '';
  double mh = 0.0;

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
                if (kmh_str.isNotEmpty) {
                  try {
                    double kmh = double.parse(kmh_str);
                    mh = kmh * 0.6093;
                  } catch (e) {
                    mh = 0.0;
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
                    kmh_str = text;
                  },
                  decoration: InputDecoration(
                      labelText: 'km/h -> m/h', border: OutlineInputBorder()),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 10),
                Text(style: TextStyle(fontSize: 50), '$mh m/h')
              ],
            )));
  }
}
