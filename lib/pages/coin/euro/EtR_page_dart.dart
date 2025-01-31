import 'package:flutter/material.dart';

class etr extends StatefulWidget {
  const etr({super.key});

  @override
  State<etr> createState() => _etrState();
}

class _etrState extends State<etr> {
  String euro_str = '';
  double real = 0.0;

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
                  real = euro * 6;
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
                  euro_str = text;
                },
                decoration: InputDecoration(
                    labelText: 'Euro -> Real', border: OutlineInputBorder()),
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
