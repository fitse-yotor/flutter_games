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
  static double playerx = 0;
  //misalle variable

  double miaslex = 0;
  double misaley = 1;
  double misalehight = 10;

  void MoveLeft() {
    setState(() {
      if (playerx - 0.1 < -1) {
      } else {
        playerx -= 0.1;
      }
      miaslex = playerx;
    });
  }

  void MoveRight() {
    setState(() {
      if (playerx + 0.1 > 1) {
      } else {
        playerx += 0.1;
      }
      miaslex = playerx;
    });
  }

  void firemisale() {
    Timer.periodic(Duration(microseconds: 20), (timer) {
      // if (misaleheight > MediaQuery.of(context).size.height * 3 / 4) {
      // restMisale();
      //timer.cancel();
      // }
      setState(() {
        misalehight += 0.1;
      });
    });
  }

  void restMisale() {
    miaslex = playerx;
    misalehight += 10;
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
        if (event.isKeyPressed(LogicalKeyboardKey.space)) {
          firemisale();
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
                        height: misalehight,
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
