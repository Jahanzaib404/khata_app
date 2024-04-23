import 'package:flutter/material.dart';
import 'package:portfolio/dashboard/search.dart';
import 'package:portfolio/dashboard/settings.dart';

import 'home.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Easy Khata'),
        backgroundColor: Colors.blue,
      ),
      body: pages[_currentIndex],
      bottomNavigationBar: bottomNavigation(),
    );
  }

  BottomNavigationBar bottomNavigation() {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      backgroundColor: Colors.blueAccent,
      selectedItemColor: Colors.yellow,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: "Search",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: "Settings",
        ),
      ],
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
    );
  }

  List<Widget> pages = [HomePage(), SearchPage(), SettingsPage(), Container()];
}
