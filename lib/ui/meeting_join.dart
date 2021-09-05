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
  _MeetingJoinState(this.data);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2d2e30),
      appBar: AppBar(
        backgroundColor: Color(0xff2d2e30),
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
                  color: Colors.white, fontSize: 25, fontFamily: 'Avenir'),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.width / 3,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10)),
                    child: Camera(
                      pos: 1,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.grey)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.video_call,
                      color: Colors.grey,
                      size: 30,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.grey)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.mic,
                      color: Colors.grey,
                      size: 30,
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
                        color: Colors.blue),
                    child: Center(
                        child: Text(
                      "Join",
                      style: TextStyle(
                        color: Color(0xff2d2e30),
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
                  color: Color(0xff2d2e30),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.white)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.present_to_all,
                    size: 18,
                    color: Colors.blue,
                  ),
                  Text(
                    "Share screen",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Avenir',
                    ),
                  ),
                ],
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
                    color: Colors.white,
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
                      color: Colors.white,
                      fontFamily: 'Avenir',
                      fontSize: 16,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text(
                    "meet.googlew.com/${getId(data)}",
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
      data.substring(5, data.length);
  return id;
}
