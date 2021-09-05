import 'package:flutter/material.dart';

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
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "$data",
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
                Container(
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
