import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _height = 0.15;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.black,
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
                  InkWell(
                    onTap: () {
                      _popcard(context);
                    },
                    child: Container(
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
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
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
                  ),
                ],
              ),
              SizedBox(
                height: 18,
              ),
              Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * _height,
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
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            _height = 0;
                                          });
                                        },
                                        child: Container(
                                          alignment: Alignment.center,
                                          child: Text(
                                            "Dismiss",
                                            style: TextStyle(
                                                color: Color(0xfff9f9fa),
                                                fontWeight: FontWeight.w500,
                                                fontFamily: 'Avenir'),
                                          ),
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

  void _popcard(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext c) {
          return Container(
            padding: EdgeInsets.all(12),
            height: MediaQuery.of(context).size.height * 0.24,
            width: MediaQuery.of(context).size.width,
            color: Colors.black,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Row(
                    children: [
                      Icon(
                        Icons.link,
                        size: 28,
                        color: Color(0xfff9f9fa),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Get a meeting link to share",
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xfff9f9fa),
                          fontFamily: 'Avenir',
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Row(
                    children: [
                      Icon(
                        Icons.video_call,
                        size: 28,
                        color: Color(0xfff9f9fa),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Start an instant meeting",
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xfff9f9fa),
                          fontFamily: 'Avenir',
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Icon(
                          Icons.calendar_today,
                          size: 18,
                          color: Color(0xfff9f9fa),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Schedule in Google Calendar",
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xfff9f9fa),
                          fontFamily: 'Avenir',
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.close_sharp,
                      size: 28,
                      color: Color(0xfff9f9fa),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Close",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xfff9f9fa),
                        fontFamily: 'Avenir',
                      ),
                    )
                  ],
                ),
              ],
            ),
          );
        });
  }
}
