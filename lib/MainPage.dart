import 'package:financeapplication/HomePage.dart';
import 'package:financeapplication/InsightPage.dart';
import 'package:financeapplication/ToolPage.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:qrscan/qrscan.dart' as scanner;

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

Future _scan() async {
  await Permission.camera.request();
  String barcode = await scanner.scan();
  if (barcode == null) {
    print('nothing return.');
  } else {
    print(barcode);
  }
}

class _MainPageState extends State<MainPage> {

  int _currentIndex = 0;
  final List<Widget> _children = [
    HomePage(),
    InsightPage(),
    null,
    ToolsPage(),
    ToolsPage(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final _scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: _scaffoldKey,
      body: _children[_currentIndex], // new
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          print("tap");
          _scan();
        },
        child: Icon(
          Icons.camera_alt,
          color: Colors.white,
        ),
        backgroundColor: Color.fromRGBO(158, 183, 255, 1),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        clipBehavior: Clip.antiAlias,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
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
              icon: Icon(
                Icons.stay_current_portrait,
              ),
              label: '',
            ),
            new BottomNavigationBarItem(
              icon: Icon(Icons.calculate),
              label: "Tools"
            ),
            new BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Profile"
            ),
          ],
        ),
      ),
    );
  }
}
