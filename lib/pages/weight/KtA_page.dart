import 'package:flutter/material.dart';
import '../../switch.dart';

class kta extends StatefulWidget {
  @override
  State<kta> createState() {
    return ktaState();
  }
}

class ktaState extends State<kta> {
  String kg_str = '';
  double a = 0.0;

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
                if (kg_str.isNotEmpty) {
                  try {
                    double kg = double.parse(kg_str);
                    a = kg / 14.688;
                  } catch (e) {
                    a = 0.0;
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
                    kg_str = text;
                  },
                  decoration: InputDecoration(
                      labelText: 'Quilo -> Arroba',
                      border: OutlineInputBorder()),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 10),
                Text(style: TextStyle(fontSize: 50), '$a arrobas')
              ],
            )));
  }
}
