import 'package:flutter/material.dart';

class MisaleFire extends StatelessWidget {
  final miaslex;
  final misalehight;
  MisaleFire({this.miaslex, this.misalehight});
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment(miaslex, 1),
      child: Container(height: misalehight, width: 2, color: Colors.grey),
    );
  }
}
