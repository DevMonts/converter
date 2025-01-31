import 'package:flutter/material.dart';

class bte extends StatefulWidget {
  const bte({super.key});

  @override
  State<bte> createState() => _bteState();
}

class _bteState extends State<bte> {
  String bitcoin_str = '';
  double euro = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.loop),
          onPressed: () {
            setState(() {
              if (bitcoin_str.isNotEmpty) {
                try {
                  double bitcoin = double.parse(bitcoin_str);
                  euro = bitcoin * 100000;
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
                  bitcoin_str = text;
                },
                decoration: InputDecoration(
                    labelText: 'Bitcoin -> Euro', border: OutlineInputBorder()),
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
