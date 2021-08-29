import 'dart:developer' as dev;
import 'dart:math';

import 'package:flutter/material.dart';

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Center(
          child: Text(
            'Dice',
            textAlign: TextAlign.center,
          ),
        ),
      ),
      body: DicePage(),
    ),
  ));
}

int diceValue() {
  final _random = Random();
  return _random.nextInt(6) + 1;
}

class _DicePageState extends State<DicePage> {
  int lefDiceValue = 1;
  int rightDiceValue = 1;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  lefDiceValue = diceValue();
                });
              },
              child: Image.asset('images/dice$lefDiceValue.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  rightDiceValue = diceValue();
                });
                dev.log('On Right');
              },
              child: Image.asset('images/dice$rightDiceValue.png'),
            ),
          ),
        ],
      ),
    );
  }
}

// class DicePage extends StatelessWidget {
//
// }
