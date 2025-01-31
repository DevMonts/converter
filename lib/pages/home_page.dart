import 'package:converter/pages/degree/degree_page.dart';
import 'package:converter/pages/speed/speed_page.dart';
import 'package:flutter/material.dart';

import 'coin/coin_page.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int atual_page = 0;
  late PageController pages;

  @override
  void initState() {
    super.initState();
    pages = PageController(initialPage: atual_page);
  }

  setAtualPage(page) {
    setState(() {
      atual_page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pages,
        onPageChanged: setAtualPage,
        children: [coin(), degree(), speed()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: atual_page,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.monetization_on), label: 'Moeda'),
          BottomNavigationBarItem(
              icon: Icon(Icons.thermostat), label: 'Temperatura'),
          BottomNavigationBarItem(icon: Icon(Icons.speed), label: 'Velocidade'),
        ],
        onTap: (page) {
          pages.animateToPage(page,
              duration: Duration(seconds: 1), curve: Curves.ease);
        },
        selectedItemColor: Theme.of(context).colorScheme.inversePrimary,
      ),
    );
  }
}
