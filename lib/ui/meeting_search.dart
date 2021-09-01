import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MeetingJoin extends StatefulWidget {
  const MeetingJoin({Key? key}) : super(key: key);

  @override
  _MeetingJoinState createState() => _MeetingJoinState();
}

class _MeetingJoinState extends State<MeetingJoin> {
  Color _join = Colors.grey;
  final _controller = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Join with a code"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                child: Center(
                  child: Text(
                    "Join",
                    style: TextStyle(
                        color: _join, fontSize: 16, fontFamily: 'Avenir'),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 15),
                child: Container(
                  child: Text(
                    "Enter the code provided by the meeting organizer",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: 'Avenir'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  padding: EdgeInsets.only(left: 10),
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.06,
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: TextField(
                      controller: _controller,
                      onTap: () {
                        setState(() {
                          _join = Colors.blue;
                        });
                      },
                      style:
                          TextStyle(color: Colors.grey, fontFamily: 'Avenir'),
                      onChanged: (value) {
                        setState(() {});
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Example: abc-mnop-xyz",
                        hintStyle:
                            TextStyle(color: Colors.grey, fontFamily: 'Avenir'),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
