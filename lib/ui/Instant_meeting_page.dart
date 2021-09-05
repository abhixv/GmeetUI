import 'dart:math';
import 'package:flutter/material.dart';
import 'package:gmeet/utils/routes.dart';
import 'package:gmeet/widgets/camera.dart';

class InstantMeeting extends StatefulWidget {
  final String id;
  const InstantMeeting({
    Key? key,
    required this.id,
  }) : super(key: key);

  @override
  _InstantMeetingState createState() => _InstantMeetingState(id: id);
}

class _InstantMeetingState extends State<InstantMeeting> {
  final String id;
  int pos = 0;
  bool isPressed = false;
  bool camOn = false;
  bool micOn = false;
  bool micIsPressed = false;

  _InstantMeetingState({required this.id});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff2d2e30),
        appBar: AppBar(
          backgroundColor: Color(0xff2d2e30),
          elevation: 0.0,
          title: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              "$id",
              style: TextStyle(color: Colors.white),
            ),
          ),
          actions: [
            GestureDetector(
              onTap: () {
                setState(() {
                  if (pos == 0) {
                    pos = 1;
                  } else {
                    pos = 0;
                  }
                });
              },
              child: Icon(
                Icons.cameraswitch_rounded,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Icon(
                Icons.volume_up_rounded,
                color: Colors.white,
                size: 30,
              ),
            )
          ],
        ),
        body: Container(
            padding: EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.15,
                ),
                Text(
                  "You're the only one here",
                  style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'Avenir',
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Share this meeting link with pthers that you want in the meeting",
                  style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'Avenir',
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.046,
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "meet.google.com/$id",
                        style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Avenir',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: InkWell(
                          onTap: () {
                            final alert = SnackBar(
                              content: const Text(
                                'Copied meeting link',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: 'Avenir',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              backgroundColor: Colors.white,
                              action: SnackBarAction(
                                label: 'Undo',
                                textColor: Colors.grey,
                                onPressed: () {},
                              ),
                            );
                            ScaffoldMessenger.of(context).showSnackBar(alert);
                          },
                          child: Icon(
                            Icons.copy_rounded,
                            color: Colors.grey,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 2.9,
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
                            "Share invite",
                            style: TextStyle(
                              color: Color(0xff2d2e30),
                              fontFamily: 'Avenir',
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      )),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width / 4,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(10)),
                      child: cameraOn(camOn, pos),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.red),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.call_end,
                            color: Colors.white,
                            size: 25,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.grey)),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: GestureDetector(
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
                            child: changeIcon(isPressed)),
                      ),
                    ),
                    SizedBox(
                      width: 20,
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
                          padding: const EdgeInsets.all(15.0),
                          child: micChange(micIsPressed),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.grey)),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Icon(
                          Icons.menu_outlined,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )));
  }
}

micChange(bool micIsPressed) {
  if (micIsPressed == true) {
    return Icon(
      Icons.mic,
      color: Colors.white,
      size: 25,
    );
  } else {
    return Icon(
      Icons.mic_off,
      color: Colors.white,
      size: 25,
    );
  }
}

changeIcon(bool isPressed) {
  if (isPressed == true) {
    return Icon(
      Icons.video_call,
      color: Colors.white,
      size: 25,
    );
  } else {
    return Icon(
      Icons.videocam_off,
      color: Colors.white,
      size: 25,
    );
  }
}

cameraOn(bool camOn, int pos) {
  if (camOn == true) {
    return Camera(
      pos: pos,
    );
  } else {
    return null;
  }
}
