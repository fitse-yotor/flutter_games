import 'package:flutter/material.dart';
import 'package:game_1/myButton.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            flex: 3,
            child: Container(
              color: Colors.pink[100],
            )),
        Expanded(
            child: Container(
          color: Colors.grey,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [MyButton(), MyButton(), MyButton()],
          ),
        ))
      ],
    );
  }
}
