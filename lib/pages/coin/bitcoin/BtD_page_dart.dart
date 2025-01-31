import 'package:flutter/material.dart';

class btd extends StatefulWidget {
  const btd({super.key});

  @override
  State<btd> createState() => _btdState();
}

class _btdState extends State<btd> {
  String bitcoin_str = '';
  double dolar = 0.0;

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
                  dolar = bitcoin * 100000;
                } catch (e) {
                  dolar = 0.0;
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
                    labelText: 'Bitcoin -> Dólar',
                    border: OutlineInputBorder()),
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 10,
              ),
              Text(style: TextStyle(fontSize: 50), '$dolar')
            ],
          ),
        ));
  }
}
