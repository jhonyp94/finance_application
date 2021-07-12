import 'package:financeapplication/HomePage.dart';
import 'package:financeapplication/InsightPage.dart';
import 'package:financeapplication/ToolPage.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int _currentIndex = 0;
  final List<Widget> _children = [
    HomePage(),
    InsightPage(),
    ToolsPage(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex], // new
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped, // new
        currentIndex: _currentIndex, // new
        items: [
          new BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.insights),
            label: "Insight",
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.calculate),
            label: "Tools"
          )
        ],
      ),
    );
  }
}
