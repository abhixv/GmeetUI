import 'dart:ffi';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:gmeet/ui/Instant_meeting_page.dart';
import 'package:gmeet/utils/routes.dart';
import 'package:gmeet/widgets/drawer.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _height = 0.15;
  String id = getRandomString();
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2d2e30),
      drawer: MyDrawer(),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xff2d2e30),
        iconTheme: IconThemeData(
          color: Colors.grey,
        ),
        centerTitle: true,
        title: Text(
          "Meet",
          style: TextStyle(
              color: Colors.grey,
              fontFamily: 'Avenir',
              fontWeight: FontWeight.w500),
        ),
        actions: [
          GestureDetector(
              onTap: () {
                Alert(
                  context: context,
                  style: AlertStyle(
                    alertPadding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.14),
                    alertAlignment: Alignment.topCenter,
                    backgroundColor: Color(0xff2d2e30),
                    animationType: AnimationType.grow,
                    overlayColor: Colors.transparent,
                    isCloseButton: true,
                    isButtonVisible: false,
                    isOverlayTapDismiss: true,
                    animationDuration: Duration(milliseconds: 300),
                    alertBorder: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  content: Container(
                      width: MediaQuery.of(context).size.width * 0.84,
                      height: MediaQuery.of(context).size.height * 0.31,
                      alignment: Alignment.topLeft,
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            child: Text(
                              "Google",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontFamily: 'Avenir',
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height:
                                        MediaQuery.of(context).size.height / 8,
                                    width:
                                        MediaQuery.of(context).size.width / 8,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/profile_img.jpg"))),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Abhishek Sharma",
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.white,
                                              fontFamily: 'Avenir',
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "abhixv.sh@gmail.com",
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.white,
                                              fontFamily: 'Avenir',
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.04,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              1.65,
                                          decoration: BoxDecoration(
                                              color: Color(0xff2d2e30),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              border: Border.all(
                                                  color: Colors.white)),
                                          child: Center(
                                            child: Text(
                                                "Manage your Google Account",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.white,
                                                    fontFamily: 'Avenir',
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Divider(
                            color: Colors.white,
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Icon(
                                  Icons.person_add_alt_outlined,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text("Add another account",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontFamily: 'Avenir',
                                      fontWeight: FontWeight.bold))
                            ],
                          ),
                          Divider(
                            color: Colors.white,
                          ),
                          Text("Privacy Policy . Terms of service",
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                  fontFamily: 'Avenir',
                                  fontWeight: FontWeight.bold)),
                        ],
                      )),
                ).show();
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Container(
                  height: MediaQuery.of(context).size.height / 8,
                  width: MediaQuery.of(context).size.width / 12,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.grey, width: 0.2),
                      image: DecorationImage(
                          image: AssetImage("assets/images/profile_img.jpg"))),
                ),
              ))
        ],
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
                      showModalBottomSheet(
                          context: context,
                          builder: (BuildContext c) {
                            return Container(
                              padding: EdgeInsets.only(left: 15),
                              height: MediaQuery.of(context).size.height * 0.26,
                              width: MediaQuery.of(context).size.width,
                              color: Color(0xff2d2e30),
                              child: Column(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      _openPopup(context, id);
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          bottom: 15, top: 15),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.link,
                                            size: 28,
                                            color: Colors.grey,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "Get a meeting link to share",
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.grey,
                                              fontFamily: 'Avenir',
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        id = getRandomString();
                                      });
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  InstantMeeting(id: id)));
                                    },
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 15),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.video_call,
                                            size: 28,
                                            color: Colors.grey,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "Start an instant meeting",
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.grey,
                                              fontFamily: 'Avenir',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 15),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 5),
                                            child: Icon(
                                              Icons.calendar_today,
                                              size: 18,
                                              color: Colors.grey,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          Text(
                                            "Schedule in Google Calendar",
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.grey,
                                              fontFamily: 'Avenir',
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.close_sharp,
                                          size: 28,
                                          color: Colors.grey,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "Close",
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.grey,
                                            fontFamily: 'Avenir',
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          });
                      ;
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: MediaQuery.of(context).size.height * 0.05,
                      decoration: BoxDecoration(
                          color: Color(0xff89b4f8),
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
                    onTap: () {
                      Navigator.pushNamed(context, MyRoutes.meetingSearch);
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: MediaQuery.of(context).size.height * 0.05,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 0.7),
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                        child: Text(
                          "Join with a code",
                          style: TextStyle(
                              color: Color(0xff89b4f8),
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
                      border: Border.all(color: Colors.grey, width: 0.7),
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
                              color: Color(0xff89b4f8),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Your account lets you join meetings, but not\ncreate them",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Avenir'),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Text(
                                            "Learn more",
                                            style: TextStyle(
                                                color: Color(0xff89b4f8),
                                                fontWeight: FontWeight.w500,
                                                fontFamily: 'Avenir'),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      GestureDetector(
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
                                                color: Colors.grey,
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
                        color: Colors.grey,
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

String getRandomString() {
  int length = 8;
  const _chars = 'abcdefghijklmnopqrstvuwxyz';
  Random _r = Random();
  String s = String.fromCharCodes(Iterable.generate(
      length, (_) => _chars.codeUnitAt(_r.nextInt(_chars.length))));
  String i = s.substring(0, 3) +
      "-" +
      s.substring(3, 7) +
      "-" +
      s.substring(5, s.length);
  return i;
}

_openPopup(context, String id) {
  Alert(
    context: context,
    style: AlertStyle(
      backgroundColor: Color(0xff2d2e30),
      animationType: AnimationType.grow,
      overlayColor: Colors.transparent.withOpacity(0.3),
      isCloseButton: true,
      isButtonVisible: false,
      isOverlayTapDismiss: true,
      animationDuration: Duration(milliseconds: 300),
      alertBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    content: Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          child: Text(
            "Here's the link to your meeting",
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'Avenir',
                fontWeight: FontWeight.bold,
                fontSize: 14),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.topLeft,
          child: Text(
            "Copy this link and send it to people that you want to meet with. Make sure that you save it so that you can use it later, too.",
            style: TextStyle(
                color: Colors.grey, fontFamily: 'Avenir', fontSize: 12),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
            padding: EdgeInsets.only(left: 10),
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.height * 0.05,
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "meet.google.com/$id",
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'Avenir', fontSize: 14),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.copy_rounded,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            )),
        SizedBox(
          height: 15,
        ),
        Container(
          width: MediaQuery.of(context).size.width / 2.5,
          height: MediaQuery.of(context).size.height * 0.046,
          child: ElevatedButton(
              onPressed: () {},
              child: Row(
                children: [
                  Icon(
                    Icons.share,
                    color: Color(0xff2d2e30),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Share invitation",
                    style: TextStyle(
                      color: Color(0xff2d2e30),
                      fontFamily: 'Avenir',
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              )),
        ),
      ],
    ),
  ).show();
}
