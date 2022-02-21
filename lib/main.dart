import 'package:flutter/material.dart';
import 'package:flutter_application_basic_ui/styles.dart_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Basic Ui",
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Basic ui")),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  "Container 1",
                  style: ThemeStyle.containerText,
                ),
                color: Colors.blue,
                padding: EdgeInsets.all(40.0),
              ),
            ),
            Expanded(
              child: Container(
                child: Text("Container 2",
                style: ThemeStyle.containerText,),
                color: Colors.red,
                padding: EdgeInsets.all(30.0),
              ),
            ),
            Expanded(
              child: Container(
                child: Text("Container 3"),
                color: Colors.amberAccent,
                padding: EdgeInsets.all(30.0),
              ),
            ),
            Expanded(
              child: Container(
                child: Text("Container 4 extended"),
                color: Colors.brown,
                padding: EdgeInsets.all(30.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
