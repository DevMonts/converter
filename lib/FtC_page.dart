import 'package:flutter/material.dart';
import 'package:grau/switch.dart';

class ctf extends StatefulWidget {
  @override
  State<ctf> createState() {
    return ctfState();
  }
}

class ctfState extends State<ctf> {
  String fahrenheit_str = '';
  double celsius = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Celsius -> Fahrenheit'),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.navigate_next),
          onPressed: () {
            setState(() {
              if (fahrenheit_str.isNotEmpty) {
                try {
                  double fahrenheit = double.parse(fahrenheit_str);
                  celsius = ((fahrenheit - 32) * 5 / 9);
                } catch (e) {
                  celsius = 0.0;
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
                fahrenheit_str = text;
              },
              decoration: InputDecoration(
                  labelText: 'Fahrenheit -> Celsius',
                  border: OutlineInputBorder()),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 50,),
            Text(style: TextStyle(fontSize: 50),'$celsius')
          ],
        ),
      ),
    );
  }
}
