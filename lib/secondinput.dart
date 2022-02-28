import 'package:flutter/material.dart';

class secondinput extends StatelessWidget {
  String name;
 secondinput({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          name,
          style: TextStyle(
            fontSize: 20.0,
          ),
        ),
      ),
    );
  }
}
