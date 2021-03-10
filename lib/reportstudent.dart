import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import './report.dart';

class ReportStudents extends StatefulWidget {
  const ReportStudents({Key key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _ReportStudentsState();
}

class _ReportStudentsState extends State<ReportStudents>
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
          title: Text("Report Students"),
          backgroundColor: Color(0xffda1830),
          automaticallyImplyLeading: true,
        ),
        body: Container(
          child: Align(
            alignment: Alignment.center,
            child: Column(
              children: [
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
                                    builder: (context) => Report()),
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
