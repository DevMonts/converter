import 'package:flutter/material.dart';

class rtb extends StatefulWidget {
  const rtb({super.key});

  @override
  State<rtb> createState() => _rtbState();
}

class _rtbState extends State<rtb> {
  String real_str = '';
  double bitcoin = 0.0;

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
                  bitcoin = real * 600000;
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
                  real_str = text;
                },
                decoration: InputDecoration(
                    labelText: 'Real -> Bitcoin', border: OutlineInputBorder()),
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
