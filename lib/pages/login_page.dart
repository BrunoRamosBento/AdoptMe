import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';

  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();

    final logo = Container(
      child: Text(
        'Welcome,',
        textAlign: TextAlign.left,
        style: TextStyle(fontSize: 34.0, fontWeight: FontWeight.bold),
      ),
    );

    final logo_bottom = Container(
      child: Text(
        'Sign in to continue',
        textAlign: TextAlign.left,
        style: TextStyle(color: Colors.grey, fontSize: 24.0, fontWeight: FontWeight.normal),
      ),
    );

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(labelText: "Email"),
      validator: (value) {
        if (value.isEmpty) {
          return "Please enter a email";
        }
      },
    );

    final password = TextFormField(
      keyboardType: TextInputType.text,
      autofocus: false,
      obscureText: true,
      validator: (value) {
        if (value.isEmpty) {
          return "Please enter a password";
        }
      },
      decoration: InputDecoration(labelText: "Password"),
    );

    final loginButton = Padding(
        padding: EdgeInsets.symmetric(vertical: 16.0),
        child: Material(
          borderRadius: BorderRadius.circular(30.0),
          shadowColor: Colors.lightGreenAccent.shade100,
          elevation: 4.0,
          child: MaterialButton(
            minWidth: 200.0,
            height: 42.0,
            onPressed: () {
              if (_formKey.currentState.validate()) {
                Navigator.pushNamed(context, '/home');
              }
            },
            color: Colors.lightGreen,
            splashColor: Colors.green,
            textColor: Colors.white,
            child: Text('Get Started'),
          ),
        ));

    return Scaffold(
        backgroundColor: Colors.white,
        body: Form(
          key: _formKey,
          child: Center(
              child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.only(left: 24.0, right: 24.0),
            children: <Widget>[
              logo,
              logo_bottom,
              SizedBox(height: 38.0),
              email,
              SizedBox(height: 28.0),
              password,
              SizedBox(height: 50.0),
              loginButton
            ],
          )),
        ));
  }
}