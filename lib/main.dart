import 'package:flutter/material.dart';
import 'package:gmeet/ui/home_page.dart';
import 'package:gmeet/ui/meeting_join.dart';
import 'package:gmeet/ui/meeting_search.dart';
import 'package:gmeet/utils/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        MyRoutes.meetingSearch: (context) => MeetingSearch(),
        MyRoutes.meetingJoin: (context) => MeetingJoin(),
      },
    );
  }
}
