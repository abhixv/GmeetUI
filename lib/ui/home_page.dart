import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.grey.shade400),
        centerTitle: true,
        title: Text(
          "Meet",
          style: TextStyle(
              color: Colors.grey.shade400,
              fontFamily: 'Avenir',
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
