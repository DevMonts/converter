import 'package:flutter/material.dart';

class rte extends StatefulWidget {
  const rte({super.key});

  @override
  State<rte> createState() => _rteState();
}

class _rteState extends State<rte> {
  String real_str = '';
  double euro = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.loop),
          onPressed: () {
            setState(() {
              if (real_str.isNotEmpty) {
                try {
                  double real = double.parse(real_str);
                  euro = real / 6;
                } catch (e) {
                  euro = 0.0;
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
                    labelText: 'Real -> Euro', border: OutlineInputBorder()),
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 10,
              ),
              Text(style: TextStyle(fontSize: 50), '$euro')
            ],
          ),
        ));
  }
}
