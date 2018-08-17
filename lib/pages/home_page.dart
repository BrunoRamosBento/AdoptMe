import 'package:adopt_me/pages/home/NearYou.dart';
import 'package:adopt_me/pages/home/PetShowcase.dart';
import 'package:adopt_me/pages/commonWidgets/PlaceholderWidget.dart';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentTab = 0;

  final List<Widget> _children = [
    PetShowcase(),
    NearYou(),
    PlaceholderWidget(Colors.brown),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Center(child: _children[_currentTab]),
      bottomNavigationBar: BottomNavigationBar(
          onTap: onTabTapped,
          currentIndex: _currentTab,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.assignment),
                title: Text('Organizations')),
            BottomNavigationBarItem(
                icon: Icon(Icons.location_searching), title: Text('Near You')),
            BottomNavigationBarItem(
                icon: Icon(Icons.shop), title: Text('Shops'))
          ]),
    );
  }

  void onTabTapped(int value) {
    setState(() {
      _currentTab = value;
    });
  }

  Widget _buildAppBar() {
    return AppBar(
      title: Center(child: new FlutterLogo(
        size: 30.0,
        colors: Colors.lightGreen,
      )),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      leading: new IconButton(
          icon: Icon(Icons.person_outline, color: Colors.grey, size: 30.0),
          onPressed: () {
            //TODO: on click person icon appbar
          }),
      actions: <Widget>[
        new IconButton(
            icon: Icon(Icons.add_circle_outline, color: Colors.grey, size: 30.0),
            onPressed: () {
              //TODO: on click person icon appbar
            })
      ],
    );
  }
}
