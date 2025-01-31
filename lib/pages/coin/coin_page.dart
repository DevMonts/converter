import 'package:converter/pages/coin/real/RtB_page.dart';
import 'package:converter/pages/coin/real/RtE_page.dart';
import 'package:flutter/material.dart';
import 'bitcoin/BtD_page_dart.dart';
import 'bitcoin/BtE_page_dart.dart';
import 'bitcoin/BtR_page_dart.dart';
import 'dolar/DtB_page_dart.dart';
import 'dolar/DtE_page_dart.dart';
import 'dolar/DtR_page_dart.dart';
import 'euro/EtR_page_dart.dart';
import 'real/RtD_page.dart';

class coin extends StatefulWidget {
  const coin({super.key});

  @override
  State<coin> createState() => _coinState();
}

class _coinState extends State<coin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(children: [
            OutlinedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => rtd()),
                  );
                },
                child: Text('Real -> Dólar')), //r>d
            OutlinedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => rtb()),
                  );
                },
                child: Text('Real -> Bitcoin')), //r>b
            OutlinedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => rte()),
                  );
                },
                child: Text('Real -> Euro')), //r>e
          ]),
          SizedBox(width: 10),
          Column(children: [
            OutlinedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => dtr()),
                  );
                },
                child: Text('Dólar -> Real')), //d>r
            OutlinedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => dtb()),
                  );
                },
                child: Text('Dólar -> Bitcoin')), //d>b
            OutlinedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => dte()),
                  );
                },
                child: Text('Dólar -> Euro')), //d>e
          ]),
        ],
      ),
      SizedBox(height: 10),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(children: [
            OutlinedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => btr()),
                  );
                },
                child: Text('Bitcoin -> Dólar')), //b>r
            OutlinedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => btd()),
                  );
                },
                child: Text('Bitcoin -> Dólar')), //b>d
            OutlinedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => bte()),
                  );
                },
                child: Text('Bitcoin -> Euro')), //b>e
          ]),
          SizedBox(width: 10),
          Column(children: [
            OutlinedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => etr()),
                  );
                },
                child: Text('Euro -> Real')), //e>r
            OutlinedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => btd()),
                  );
                },
                child: Text('Euro -> Dólar')), //e>d
            OutlinedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => bte()),
                  );
                },
                child: Text('Euro -> Bitcoin')), //e>b
          ]),
        ],
      )
    ])));
  }
}
