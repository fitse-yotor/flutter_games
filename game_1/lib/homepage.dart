import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:game_1/myButton.dart';
import 'package:game_1/myplayer.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // player variable
  double playerx = 0;
  //misalle variable
  double miaslex = 0;
  double misaley = 1;

  void MoveLeft() {
    setState(() {
      if (playerx - 0.1 < -1) {
      } else {
        playerx -= 0.1;
      }
    });
  }

  void MoveRight() {
    setState(() {
      if (playerx + 0.1 > 1) {
      } else {
        playerx += 0.1;
      }
    });
  }

  void firemisale() {
    Timer.periodic(Duration(microseconds: 100), (timer) {});
  }

  @override
  Widget build(BuildContext context) {
    return RawKeyboardListener(
      focusNode: FocusNode(),
      autofocus: true,
      onKey: (event) {
        if (event.isKeyPressed(LogicalKeyboardKey.arrowLeft)) {
          MoveLeft();
        } else if (event.isKeyPressed(LogicalKeyboardKey.arrowRight)) {
          MoveRight();
        }
      },
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.pink[100],
              child: Center(
                child: Stack(
                  children: [
                    MyPlayer(
                      playerx: playerx,
                    ),
                    Container(
                      alignment: Alignment(miaslex, misaley),
                      child: Container(
                        height: 30,
                        width: 30,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
              child: Container(
            color: Colors.grey,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MyButton(
                  icon: Icons.arrow_left,
                  function: MoveLeft,
                ),
                MyButton(icon: Icons.arrow_upward),
                MyButton(
                  icon: Icons.arrow_right,
                  function: MoveRight,
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}

class Aligment {
  Aligment(double misaley, double miaslex);
}
