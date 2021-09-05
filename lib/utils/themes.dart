import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData light(BuildContext context) => ThemeData(
      appBarTheme: AppBarTheme(
          color: Colors.white,
          textTheme: Theme.of(context).textTheme,
          iconTheme: IconThemeData(color: Theme.of(context).accentColor)),
      backgroundColor: Colors.white,
      brightness: Brightness.light,
      accentColor: Colors.black,
      cardColor: Colors.blue,
      canvasColor: Colors.grey.shade300);

  static ThemeData dark(BuildContext context) => ThemeData(
      appBarTheme: AppBarTheme(
          color: Colors.grey.shade900,
          iconTheme: IconThemeData(color: Theme.of(context).accentColor)),
      backgroundColor: Color(0xff2d2e30),
      brightness: Brightness.dark,
      accentColor: Colors.white,
      cardColor: Color(0xff89b4f8),
      canvasColor: Colors.grey.withOpacity(0.2));
}
