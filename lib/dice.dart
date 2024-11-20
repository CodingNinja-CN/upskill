import 'package:flutter/material.dart';
import 'dart:math';

class Dice extends StatefulWidget {
  const Dice({super.key});

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int leftDice = Random().nextInt(6) + 1;
  int rightDice = Random().nextInt(6) + 1;

  void ChangeDice() {
    setState(() {
      leftDice = Random().nextInt(6) + 1;
      rightDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xff7d0d05),
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                ChangeDice();
              },
              icon: Icon(
                Icons.refresh,
                color: Colors.white,
                size: 30,
              ))
        ],
        backgroundColor: Color(0xff8a150c),
        centerTitle: true,
        title: Text(
          "Dice",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
        ),
        elevation: 5,
        shadowColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            Expanded(
              child: Center(
                child: Image.asset('assets/dice$leftDice.png'),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Image.asset('assets/dice$rightDice.png'),
            ),
          ],
        ),
      ),
    ));
  }
}
