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
              flex: 4,
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
            //40% of screen
            Expanded(
                flex: 4,
                child: Row(children: <Widget>[
                  Expanded(
                    flex: 5,
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        "Container 2 extend 1",
                        style: ThemeStyle.containerText,
                      ),
                      color: Colors.red,
                      padding: EdgeInsets.all(30.0),
                    ),
                  ),
                  Expanded(
                      flex: 5,
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            flex: 8,
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                "Container 2 extend 2/2",
                                style: ThemeStyle.containerText,
                              ),
                              color: Color.fromARGB(255, 25, 161, 131),
                              padding: EdgeInsets.all(30.0),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                "Container 2 extend 2/3",
                                style: ThemeStyle.containerText,
                              ),
                              color: Color.fromARGB(255, 122, 25, 161),
                              padding: EdgeInsets.all(30.0),
                            ),
                          ),
                        ],
                      )),
                ])),
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  "Container 3",
                  style: ThemeStyle.containerText,
                ),
                color: Colors.amberAccent,
                padding: EdgeInsets.all(30.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
