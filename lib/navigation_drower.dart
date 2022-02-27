import 'package:flutter/material.dart';
import 'package:flutter_application_basic_ui/first_Screen.dart';

import 'second_screen.dart';

Widget NavigationMenu(BuildContext context) {
  var NavigationMenu = Drawer(
    child: ListView(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.abc_rounded),
          title: Text("First Screen"),
          onTap: () {
            print("First screen");
            Navigator.pop(context);
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return FirstScreen();
            }));
          },
        ),
        ListTile(
          leading: Icon(Icons.abc_rounded),
          title: Text("Second Screen"),
          onTap: () {
            print("Second screen");
            Navigator.pop(context);
            Navigator.push(context, MaterialPageRoute(
              builder: (context)
               {
              return SecondScreen();
            },
            ),
            );
          },
        ),
      ],
    ),
  );
  return NavigationMenu;
}
