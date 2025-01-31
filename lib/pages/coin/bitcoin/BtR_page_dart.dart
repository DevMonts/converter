import 'package:flutter/material.dart';

class btr extends StatefulWidget {
  const btr({super.key});

  @override
  State<btr> createState() => _btrState();
}

class _btrState extends State<btr> {
  String bitcoin_str = '';
  double real = 0.0;

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
                  real = bitcoin * 600000;
                } catch (e) {
                  real = 0.0;
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
                    labelText: 'Bitcoin -> Real', border: OutlineInputBorder()),
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 10,
              ),
              Text(style: TextStyle(fontSize: 50), '$real')
            ],
          ),
        ));
  }
}
