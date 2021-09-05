import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:gmeet/ui/Instant_meeting_page.dart';
import 'package:gmeet/widgets/camera.dart';

class MeetingJoin extends StatefulWidget {
  final String data;
  const MeetingJoin({
    Key? key,
    required this.data,
  }) : super(key: key);
  @override
  _MeetingJoinState createState() => _MeetingJoinState(data);
}

class _MeetingJoinState extends State<MeetingJoin> {
  final String data;
  int pos = 0;
  bool isPressed = false;
  bool camOn = false;
  bool micOn = false;
  bool micIsPressed = false;
  _MeetingJoinState(this.data);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        elevation: 0.0,
        actions: [
          Icon(
            Icons.volume_up,
            size: 28,
          ),
          SizedBox(
            width: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Icon(
              Icons.dangerous_outlined,
              size: 28,
            ),
          )
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "${getId(data)}",
              style: TextStyle(
                  color: Theme.of(context).accentColor,
                  fontSize: 25,
                  fontFamily: 'Avenir'),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.width / 3,
                    decoration: BoxDecoration(
                        color: Theme.of(context).canvasColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: cameraOn(camOn, pos),
                  ),
                ],
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (camOn == true) {
                        camOn = false;
                        isPressed = false;
                      } else {
                        camOn = true;
                        isPressed = true;
                      }
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.grey)),
                    child: Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: changeIcon(isPressed)),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (micOn == true) {
                        micOn = false;
                        micIsPressed = false;
                      } else {
                        micOn = true;
                        micIsPressed = true;
                      }
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.grey)),
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: micChange(micIsPressed),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                InstantMeeting(id: getId(data))));
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: MediaQuery.of(context).size.width / 4,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Theme.of(context).cardColor),
                    child: Center(
                        child: Text(
                      "Join",
                      style: TextStyle(
                        color: Theme.of(context).backgroundColor,
                        fontFamily: 'Avenir',
                      ),
                    )),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.04,
              width: MediaQuery.of(context).size.width / 3,
              decoration: BoxDecoration(
                  color: Theme.of(context).backgroundColor,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Theme.of(context).accentColor)),
              child: GestureDetector(
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.present_to_all,
                      size: 18,
                      color: Theme.of(context).cardColor,
                    ),
                    Text(
                      "Share screen",
                      style: TextStyle(
                        color: Theme.of(context).accentColor,
                        fontFamily: 'Avenir',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "You're the first one here",
              style: TextStyle(
                color: Colors.grey,
                fontFamily: 'Avenir',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              color: Colors.grey,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.dangerous_outlined,
                  color: Colors.grey,
                  size: 25,
                ),
                Text(
                  "Joining information",
                  style: TextStyle(
                    color: Theme.of(context).accentColor,
                    fontFamily: 'Avenir',
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.share,
                  color: Colors.grey,
                  size: 25,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text(
                    "Meeting Link",
                    style: TextStyle(
                      color: Theme.of(context).accentColor,
                      fontFamily: 'Avenir',
                      fontSize: 16,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text(
                    "meet.google.com/${getId(data)}",
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'Avenir',
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

String getId(String data) {
  String id = data.substring(0, 3) +
      "-" +
      data.substring(3, 7) +
      "-" +
      data.substring(7, 10);
  return id;
}
