import 'package:flutter/material.dart';
import 'package:flutter_application_basic_ui/second_screen.dart';
import 'package:google_fonts/google_fonts.dart';

import 'navigation_drower.dart';

class FirstScreen extends StatefulWidget {
  FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       drawer: NavigationMenu(context),
      appBar: AppBar(
        title: Text("First Screen"),
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.arrow_right),
      //   onPressed: () {
      //     Navigator.push(context, MaterialPageRoute(builder: (context) {
      //       return SecondScreen();
      //     }
      //     )
      //     );
      //   },
      // ),
      body: Center(
        child: Text(
          "First Screen",
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
