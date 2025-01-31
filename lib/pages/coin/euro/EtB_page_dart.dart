import 'package:flutter/material.dart';

class etb extends StatefulWidget {
  const etb({super.key});

  @override
  State<etb> createState() => _etbState();
}

class _etbState extends State<etb> {
  String euro_str = '';
  double bitcoin = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.loop),
          onPressed: () {
            setState(() {
              if (euro_str.isNotEmpty) {
                try {
                  double euro = double.parse(euro_str);
                  bitcoin = euro / 100000;
                } catch (e) {
                  bitcoin = 0.0;
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
                  euro_str = text;
                },
                decoration: InputDecoration(
                    labelText: 'Euro -> Bitcoin', border: OutlineInputBorder()),
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 10,
              ),
              Text(style: TextStyle(fontSize: 50), '$bitcoin')
            ],
          ),
        ));
  }
}
