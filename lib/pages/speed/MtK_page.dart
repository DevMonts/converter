import 'package:flutter/material.dart';

class mtk extends StatefulWidget {
  @override
  State<mtk> createState() {
    return mtkState();
  }
}

class mtkState extends State<mtk> {
  String mh_str = '';
  double kmh = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.loop),
            onPressed: () {
              setState(() {
                if (mh_str.isNotEmpty) {
                  try {
                    double mh = double.parse(mh_str);
                    kmh = mh / 0.6093;
                  } catch (e) {
                    kmh = 0.0;
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
                    mh_str = text;
                  },
                  decoration: InputDecoration(
                      labelText: 'm/h -> km/h', border: OutlineInputBorder()),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 10),
                Text(style: TextStyle(fontSize: 50), '$kmh km/h')
              ],
            )));
  }
}
