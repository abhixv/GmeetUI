import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gmeet/ui/meeting_join.dart';
import 'package:gmeet/utils/routes.dart';

class MeetingSearch extends StatefulWidget {
  const MeetingSearch({Key? key}) : super(key: key);

  @override
  _MeetingSearchState createState() => _MeetingSearchState();
}

class _MeetingSearchState extends State<MeetingSearch> {
  Color _join = Colors.grey;
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        elevation: 0.0,
        title: Text(
          "Join with a code",
          style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
              fontFamily: 'Avenir'),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: GestureDetector(
              onTap: () {
                if (_controller.text != "" && (_controller.text).length == 10) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MeetingJoin(
                                data: _controller.text,
                              )));
                } else {
                  int dataLength = (_controller.text).length;

                  ScaffoldMessenger.of(context)
                      .showSnackBar(getAlert(dataLength));
                }
              },
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
                        color: Theme.of(context).accentColor,
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
                      color: Theme.of(context).canvasColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: TextField(
                      controller: _controller,
                      onTap: () {
                        setState(() {
                          _join = Theme.of(context).cardColor;
                        });
                      },
                      style:
                          TextStyle(color: Colors.grey, fontFamily: 'Avenir'),
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

SnackBar getAlert(int length) {
  return SnackBar(
    content: const Text(
      'Invalid meeting link',
      style: TextStyle(
        color: Colors.grey,
        fontFamily: 'Avenir',
        fontWeight: FontWeight.bold,
      ),
    ),
    backgroundColor: Colors.white,
  );
}
