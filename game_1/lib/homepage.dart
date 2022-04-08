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
  double playerx = 0;
  void MoveLeft() {
    setState(() {
      playerx -= 0.1;
    });
  }

  void MoveRight() {
    setState(() {
      playerx += 0.1;
    });
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
                    )
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
