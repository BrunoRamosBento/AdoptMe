import 'package:adopt_me/models/Pet.dart';
import 'package:flutter/material.dart';

class PetShowcase extends StatefulWidget {
  _PetShowcaseState createState() => _PetShowcaseState();
}

class _PetShowcaseState extends State<PetShowcase> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.all(30.0),
            child: Row(
              children: _buildWidgets(),
            )
        )
    );
  }


  List<Widget> _buildWidgets() {
    return <Widget>[
      Text(
        'Adopt Me',
        style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
      ),
      SizedBox(height: 20.0),
      TextFormField(
        decoration: InputDecoration(
            icon: Icon(Icons.search),
            hintText: 'asdsa'
        ),
      )
    ];
  }
}
