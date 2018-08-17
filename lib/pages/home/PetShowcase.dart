import 'package:adopt_me/models/Pet.dart';
import 'package:flutter/material.dart';

class PetShowcaseItem extends StatelessWidget {

  PetShowcaseItem({ Key key, @required this.pet, this.shape })
      : assert(pet != null),
        super(key: key);

  static final double height = 200.0;
  final ShapeBorder shape;
  final Pet pet;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final TextStyle titleStyle = theme.textTheme.headline.copyWith(
        color: Colors.white);

    return SafeArea(
      top: false,
      bottom: false,
      child: Container(
          padding: const EdgeInsets.all(8.0),
          height: PetShowcaseItem.height,
          child: Card(
            shape: shape,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 100.0,
                  child: Stack(
                    children: <Widget>[
                      Positioned.fill(
                          child: Image.asset(pet.assetName, package: 'assets',
                              fit: BoxFit.cover)
                      ),
                      Positioned(
                        bottom: 16.0,
                        left: 16.0,
                        right: 16.0,
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          alignment: Alignment.centerLeft,
                          child: Text(pet.name, style: titleStyle),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }
}

class PetShowcase extends StatefulWidget {

  _PetShowcaseState createState() => _PetShowcaseState();
}

class _PetShowcaseState extends State<PetShowcase> {

  List<Pet> pets = <Pet>[
    Pet('Teste', 10, true, 'logo.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        itemExtent: PetShowcaseItem.height,
        padding: const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
        children: pets.map((Pet pet) {
          return Container(
            margin: const EdgeInsets.only(bottom: 8.0),
            child: PetShowcaseItem(
              pet: pet,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

}