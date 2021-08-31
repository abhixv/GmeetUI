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
      backgroundColor: Color(0xff202025),
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Color(0xff202025),
        iconTheme: IconThemeData(
          color: Color(0xfff9f9fa),
        ),
        centerTitle: true,
        title: Text(
          "Meet",
          style: TextStyle(
              color: Color(0xfff9f9fa),
              fontFamily: 'Avenir',
              fontWeight: FontWeight.w500),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: MediaQuery.of(context).size.height * 0.05,
                    decoration: BoxDecoration(
                        color: Color(0xff89b5f9),
                        border:
                            Border.all(color: Color(0xfff9f9fa), width: 0.7),
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: Text(
                        "New meeting",
                        style: TextStyle(
                            color: Color(0xff1f2a52),
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Avenir'),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: MediaQuery.of(context).size.height * 0.05,
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: Color(0xfff9f9fa), width: 0.7),
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: Text(
                        "Join with a code",
                        style: TextStyle(
                            color: Color(0xff89b5f9),
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Avenir'),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 18,
              ),
              Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.15,
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xfff9f9fa), width: 0.7),
                      borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.warning_amber_rounded,
                              color: Color(0xff89b5f9),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Your account lets you join meetings, but not\ncreate them",
                                    style: TextStyle(
                                        color: Color(0xfff9f9fa),
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Avenir'),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      InkWell(
                                        onTap: () {},
                                        child: Container(
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Text(
                                            "Learn more",
                                            style: TextStyle(
                                                color: Color(0xff89b5f9),
                                                fontWeight: FontWeight.w500,
                                                fontFamily: 'Avenir'),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Dismiss",
                                          style: TextStyle(
                                              color: Color(0xfff9f9fa),
                                              fontWeight: FontWeight.w500,
                                              fontFamily: 'Avenir'),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
              SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "MEETINGS",
                    style: TextStyle(
                        color: Color(0xfff9f9fa),
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Avenir',
                        fontSize: 12),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
