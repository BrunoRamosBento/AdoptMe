import 'package:adopt_me/pages/commonWidgets/PetShowcase.dart';
import 'package:adopt_me/pages/commonWidgets/PlaceholderWidget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentTab = 0;

  final List<Widget> _children = [
    PetShowcase(null, Colors.indigo),
    PlaceholderWidget(Colors.indigo),
    PlaceholderWidget(Colors.brown),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentTab],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
          currentIndex: _currentTab, items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.location_searching),
              title: Text('Pets near you')
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.camera_enhance),
                title: Text('Scan')
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle),
                title: Text('Profile')
            )
      ]),
    );
  }

  void onTabTapped(int value) {
    setState(() {
      _currentTab = value;
    });
  }
}
