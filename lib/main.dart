import 'package:flutter/material.dart';
import 'package:flutter_application_basic_ui/home.dart';
import 'package:flutter_application_basic_ui/secondinput.dart';
import 'package:flutter_application_basic_ui/styles.dart_page.dart';
import 'package:google_fonts/google_fonts.dart';

import 'first_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Style',
      theme: ThemeData(
      ),
      home: textstyle(),
    );
  }
}

class textstyle extends StatefulWidget {
  textstyle({Key? key}) : super(key: key);

  @override
  State<textstyle> createState() => _textstyleState();
}

class _textstyleState extends State<textstyle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Styling"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Enter Email",
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 30, 236, 11)),
                      borderRadius: BorderRadius.circular(12.0)),
                  border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 11, 146, 236)),
                      borderRadius: BorderRadius.circular(12.0)),
                  prefixIcon: Icon(
                    Icons.email_sharp,
                    color: Colors.blueAccent,
                  ),
                  //hintText: "Email",
                  filled: true,
                  fillColor: Colors.grey[100],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
           Container(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Enter PassWord",
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 30, 236, 11)),
                      borderRadius: BorderRadius.circular(12.0)),
                  border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 11, 146, 236)),
                      borderRadius: BorderRadius.circular(12.0)),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.blueAccent,
                  ),
                  //hintText: "Email",
                  filled: true,
                  fillColor: Colors.grey[100],
                ),
                obscureText: true,
                maxLength: 8,
              ),
            ),
          ),
          Container(
              padding: EdgeInsets.all(10.0),
              child: RaisedButton(
                color: Colors.blueAccent,
                textColor: Colors.white,
                onPressed: () {  },
                child: Text("Submit Now"),
               )
               ),
                ],
      ),
    );
  }
}



// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: TextFieldExample(),
//     );
//   }
// }

// class TextFieldExample extends StatefulWidget {
//   TextFieldExample({Key? key}) : super(key: key);

//   @override
//   State<TextFieldExample> createState() => _TextFieldExampleState();
// }

// class _TextFieldExampleState extends State<TextFieldExample> {
//   final _controllerfirstname = TextEditingController();
//   final _controllerlastname = TextEditingController();
//   String? firstName;
//   String? lastname;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Text Field Wxample"),
//       ),
//       body: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Container(
//               padding: EdgeInsets.all(10.0),
//               child: TextField(
//                 controller: _controllerfirstname,
//               ),
//             ),
//             Container(
//               padding: EdgeInsets.all(10.0),
//               child: TextField(
//                 controller: _controllerlastname,
//               ),
//             ),
//             Container(
//               padding: EdgeInsets.all(10.0),
//               child: RaisedButton(
//                 color: Colors.blueAccent,
//                 textColor: Colors.white,
//                 child: Text("Submit Now"),
//                 onPressed: () {
//                   passtosecondscreen(context);
//                 },
//               ),
//             ),
//             Text(
//               "FirstName:$firstName",
//               style: GoogleFonts.aclonica(
//                 textStyle: TextStyle(color: Colors.blue, letterSpacing: 1.0),
//               ),
//             ),
//             Text(
//               "LastName:$lastname",
//               style: GoogleFonts.aclonica(
//                 textStyle: TextStyle(color: Colors.blue, letterSpacing: .5),
//               ),
//             ),
//           ]),
//     );
//   }

//   void passtosecondscreen(BuildContext context) {
//     String sendText = _controllerfirstname.text + " " + _controllerlastname.text;
//     Navigator.push(context, MaterialPageRoute(
//       builder: ((context) => secondinput(name: sendText))));
//   }
// }







// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: "Basic Ui",
//       home: Scaffold(
//         appBar: AppBar(
//           title: Center(child: Text("Basic ui")),
//         ),
//         body: Column(
//           children: <Widget>[
//             Expanded(
//               flex: 4,
//               child: Container(
//                 alignment: Alignment.center,
//                 child: Text(
//                   "Container 1",
//                   style: ThemeStyle.containerText,
//                 ),
//                 color: Colors.blue,
//                 padding: EdgeInsets.all(40.0),
//               ),
//             ),
//             //40% of screen
//             Expanded(
//                 flex: 4,
//                 child: Row(children: <Widget>[
//                   Expanded(
//                     flex: 5,
//                     child: Container(
//                       alignment: Alignment.center,
//                       child: Text(
//                         "Container 2 extend 1",
//                         style: ThemeStyle.containerText,
//                       ),
//                       color: Colors.red,
//                       padding: EdgeInsets.all(30.0),
//                     ),
//                   ),
//                   Expanded(
//                       flex: 5,
//                       child: Column(
//                         children: <Widget>[
//                           Expanded(
//                             flex: 5,
//                             child: Container(
//                               alignment: Alignment.center,
//                               child: Text(
//                                 "Container 2 extend 2/2",
//                                 style: ThemeStyle.containerText,
//                               ),
//                               color: Color.fromARGB(255, 25, 161, 131),
//                               padding: EdgeInsets.all(30.0),
//                             ),
//                           ),
//                           Expanded(
//                             flex: 5,
//                             child: Container(
//                               alignment: Alignment.center,
//                               child: Text(
//                                 "Container 2 extend 2/3",
//                                 style: TextStyle(
//                                   color: Colors.amber,
//                                   fontSize: 10,
//                                   fontWeight: FontWeight.normal,
//                                 ),
//                               ),
//                               color: Color.fromARGB(255, 122, 25, 161),
//                               padding: EdgeInsets.all(30.0),
//                             ),
//                           ),
//                         ],
//                       )),
//                 ])),
//             Expanded(
//               flex: 2,
//               child: Container(
//                 alignment: Alignment.center,
//                 child: Text(
//                   "Container 3",
//                   style: ThemeStyle.containerText,
//                 ),
//                 color: Colors.amberAccent,
//                 padding: EdgeInsets.all(30.0),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
