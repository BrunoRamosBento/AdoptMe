import 'package:flutter/material.dart';
import 'package:adopt_me/pages/home_page.dart';
import 'package:adopt_me/pages/login_page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Adopt Me',
        debugShowCheckedModeBanner: false,
        theme: new ThemeData(
            primarySwatch: Colors.lightGreen, fontFamily: 'Nunito'),
        initialRoute: '/',
        routes: {
          '/': (context) => LoginPage(),
          '/home': (context) => HomePage()
        });
  }
}
