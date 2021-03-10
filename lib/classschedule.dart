// import 'dart:convert';
import 'package:flutter/material.dart';
// import 'package:flutter_gallery/l10n/gallery_localizations.dart';
import 'package:flutter/cupertino.dart';
import './schedule.dart';

class ClassSchedule extends StatefulWidget {
  const ClassSchedule({Key key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _ClassScheduleState();
}

class _ClassScheduleState extends State<ClassSchedule>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    var cs = [
      {
        "nama_anak": "Thomas Edison",
      },
      {
        "nama_anak": "Thomas Matulesi",
      }
    ];

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
              child: Image.asset(
                'assets/mrlc_white.png',
                width: 40,
              ),
            )
          ],
          title: Text("Class Schedule"),
          backgroundColor: Color(0xffda1830),
          automaticallyImplyLeading: true,
        ),
        body: Container(
          // margin: EdgeInsets.symmetric(vertical: 10.0),
          child: Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                // BottomNavigationBarExample(),
                Container(
                    decoration: BoxDecoration(
                      color: Color(0xfff5f5f5),
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.grey,
                          // width: 3.0,
                        ),
                      ),
                    ),
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                    // color: Color(0xfff5f5f5),
                    height: 70.0,
                    child: Container(
                      width: double.infinity,
                      child: Image.asset("assets/rc/list_students.png"),
                      height: 60.0,
                    )),
                Container(
                  child: ListView.separated(
                    separatorBuilder: (context, index) => Divider(
                      color: Colors.black,
                    ),
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(8.0),
                    itemCount: cs.length,
                    itemBuilder: (BuildContext context, int index) {
                      var itemcs =
                          cs[index]; // should be outside build function
                      return Container(
                        child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Schedule()),
                              );
                            },
                            child: Padding(
                                padding: const EdgeInsets.all(0.0),
                                child: Column(
                                  children: [
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          itemcs["nama_anak"],
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.bold),
                                        )),
                                  ],
                                ))),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
