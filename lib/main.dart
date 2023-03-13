import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.teal.shade400,
        ),
        body: const SafeArea(
          child: DicePage(),
        ),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNum = 1;
  int rightDiceNum = 1;

  void changeDiceFace() {
    setState(() {
      leftDiceNum = Random().nextInt(6) + 1;
      rightDiceNum = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              child: Image.asset("assets/images/dice$leftDiceNum.png"),
              onPressed: () {
                changeDiceFace();
              },
            ),
          ),
          Expanded(
            child: TextButton(
              child: Image.asset("assets/images/dice$rightDiceNum.png"),
              onPressed: () {
                changeDiceFace();
              },
            ),
          ),
        ],
      ),
    );
  }
}

// Stateless
/*class DicePageStateless extends StatelessWidget {
  const DicePageStateless({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int leftDiceNum = 1;
    int rightDiceNum = 1;
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                leftDiceNum = Random().nextInt(6) + 1;
                print("left : $leftDiceNum");
              },
              child: Image.asset("assets/images/dice$leftDiceNum.png"),
            ),
          ),
          Expanded(
            child: TextButton(
              child: Image.asset("assets/images/dice$rightDiceNum.png"),
              onPressed: () {
                print("right");
              },
            ),
          ),
        ],
      ),
    );
  }
}*/
