import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'navigation_drower.dart';

class SecondScreen extends StatefulWidget {
  SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       drawer: NavigationMenu(context),
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.arrow_left),
      //   onPressed: () {},
      // ),
      body: Center(
        child: Text(
          "Second Screen",
          style: GoogleFonts.lato(
            textStyle: TextStyle(
              color: Colors.blueAccent,
              fontWeight: FontWeight.bold,
              fontSize: 24.0,
            ),
          ),
        ),
      ),
    );
  }
}
