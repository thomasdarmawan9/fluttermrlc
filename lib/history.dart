// import 'dart:convert';
import 'package:flutter/material.dart';
// import 'package:flutter_gallery/l10n/gallery_localizations.dart';
import 'package:flutter/cupertino.dart';

class History extends StatefulWidget {
  const History({Key key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _HistoryState();
}

class _HistoryState extends State<History> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    // var items = [
    //   {
    //     "modul": "Life and Success Modul 1",
    //     "data": [
    //       {
    //         "kelas": "Jumat 4",
    //         "tanggal": "2 Februari 2021",
    //         "absen": "Hadir",
    //         "trainer": "Anna",
    //       },
    //       {
    //         "kelas": "Jumat 4",
    //         "tanggal": "9 Februari 2021",
    //         "absen": "Hadir",
    //         "trainer": "Anna",
    //       },
    //       {
    //         "kelas": "Jumat 4",
    //         "tanggal": "17 Februari 2021",
    //         "absen": "Hadir",
    //         "trainer": "Anna",
    //       },
    //     ]
    //   },
    // ];
    var items = [
      {
        "kelas": "Jumat 4",
        "tanggal": "2 Februari 2021",
        "absen": "Hadir",
        "trainer": "Anna",
      },
      {
        "kelas": "Jumat 4",
        "tanggal": "9 Februari 2021",
        "absen": "Hadir",
        "trainer": "Anna",
      },
      {
        "kelas": "Jumat 4",
        "tanggal": "17 Februari 2021",
        "absen": "Hadir",
        "trainer": "Anna",
      },
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
          title: Text("Class History"),
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      new FloatingActionButton.extended(
                        backgroundColor: Color(0xffb71c1c),
                        heroTag: "btn1",
                        onPressed: null,
                        label: Text(
                          "List Students",
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                      new FloatingActionButton.extended(
                        backgroundColor: Color(0xffb71c1c),
                        heroTag: "btn2",
                        onPressed: null,
                        label: Text(
                          "Modul",
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                      new FloatingActionButton.extended(
                        backgroundColor: Color(0xffda1830),
                        heroTag: "btn3",
                        onPressed: null,
                        label: Text(
                          "Present History",
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  // color: Color(0xfff5f5f5),
                  padding: EdgeInsets.fromLTRB(0, 12, 0, 12),
                  child: Center(
                    child: Text(
                      "Life and Success Modul 1",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                ),
                Container(
                  child: Expanded(
                    // height: 500.0,
                    child: ListView.builder(
                      itemCount: items.length,
                      itemBuilder: (BuildContext ctxt, int index) {
                        var item =
                            items[index]; // should be outside build function
                        return Container(
                            child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(20.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    padding:
                                        EdgeInsets.fromLTRB(10, 19, 10, 19),
                                    decoration: new BoxDecoration(
                                      borderRadius:
                                          new BorderRadius.circular(45.0),
                                      border: new Border.all(
                                        width: 1.0,
                                        color: Colors.red,
                                      ),
                                    ),
                                    child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          item["absen"],
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.bold),
                                        )),
                                  ),
                                  Container(
                                      padding:
                                          EdgeInsets.fromLTRB(12, 10, 0, 10),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                              width: 220,
                                              child: Container(
                                                child: Text(
                                                  item["tanggal"],
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 14.0,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              )),
                                          SizedBox(
                                            height: 13.0,
                                          ),
                                          Container(
                                            width: 220,
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Kelas ",
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 14.0,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text(
                                                  item["kelas"],
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 14.0,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text(
                                                  " oleh ",
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 14.0,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text(
                                                  "Coach " + item["trainer"],
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 14.0,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      )),
                                ],
                              ),
                            ),
                            Divider(
                              color: Colors.grey,
                            )
                          ],
                        ));
                      },
                    ),
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
