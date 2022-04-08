import 'package:flutter/material.dart';

class MyPlayer extends StatelessWidget {
  final playerx;

  MyPlayer({this.playerx});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment(playerx, 1),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          height: 50,
          width: 50,
          color: Colors.black,
        ),
      ),
    );
  }
}
