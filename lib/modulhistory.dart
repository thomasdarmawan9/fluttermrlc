// import 'dart:convert';
import 'package:flutter/material.dart';
// import 'package:flutter_gallery/l10n/gallery_localizations.dart';
import 'package:flutter/cupertino.dart';
import 'package:mrlcapp/history.dart';

class ModulHistory extends StatefulWidget {
  const ModulHistory({Key key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _ModulHistoryState();
}

class _ModulHistoryState extends State<ModulHistory>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    var items = [
      {
        "modul": "Life and Success Modul 1",
      },
      {
        "modul": "Life and Success Modul 2",
      }
    ];

    return DefaultTabController(
      length: 3,
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
                        backgroundColor: Color(0xffda1830),
                        heroTag: "btn2",
                        onPressed: null,
                        label: Text(
                          "Modul",
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                      new FloatingActionButton.extended(
                        backgroundColor: Color(0xffb71c1c),
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
                  child: Expanded(
                    // height: 500.0,
                    child: ListView.separated(
                      separatorBuilder: (context, index) => Divider(
                        color: Colors.black,
                      ),
                      itemCount: items.length,
                      itemBuilder: (BuildContext ctxt, int index) {
                        var item =
                            items[index]; // should be outside build function
                        return Container(
                          child: FlatButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => History()),
                                );
                              },
                              child: Padding(
                                  padding: const EdgeInsets.all(0.0),
                                  child: Column(
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            item["modul"],
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
