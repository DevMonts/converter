import 'package:flutter/material.dart';

class etd extends StatefulWidget {
  const etd({super.key});

  @override
  State<etd> createState() => _etdState();
}

class _etdState extends State<etd> {
  String euro_str = '';
  double dolar = 0.0;

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
                  dolar = euro;
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
                  euro_str = text;
                },
                decoration: InputDecoration(
                    labelText: 'Euro -> Dólar', border: OutlineInputBorder()),
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
