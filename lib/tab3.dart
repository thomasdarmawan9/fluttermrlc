// import 'dart:convert';
import 'package:flutter/material.dart';
// import 'package:flutter_gallery/l10n/gallery_localizations.dart';
import 'package:flutter/cupertino.dart';

class Tab3 extends StatefulWidget {
  const Tab3({Key key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _Tab3State();
}

var notif = [
  {
    "tgl_notif": "24 Februari 2021",
    "name": "Travel and Stay",
    "desc":
        "Lorem ipsum, atau ringkasnya lipsum, adalah teks standar yang ditempatkan untuk mendemostrasikan elemen grafis atau presentasi visual seperti font, tipografi, dan tata letak."
  },
  {
    "tgl_notif": "24 Februari 2021",
    "name": "asdasd",
    "desc": "Lorem ipsum, atau ringkasnya lipsum, adalah teks standar yang "
  },
];

class _Tab3State extends State<Tab3> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xfff5f5f5),
            automaticallyImplyLeading: false,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(0.0),
              child: TabBar(
                  isScrollable: true,
                  unselectedLabelColor: Colors.black,
                  labelColor: Colors.black,
                  indicatorColor: Color(0xffda1830),
                  tabs: [
                    Tab(
                      child: Text(
                        'Semua Notifikasi',
                      ),
                    ),
                    Tab(
                      child: Text('Belum Terbaca'),
                    ),
                    Tab(
                      child: Text('Sudah Terbaca'),
                    ),
                  ]),
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Container(
                child: ListView.separated(
                  separatorBuilder: (context, index) => Divider(
                    color: Colors.black,
                  ),
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(8.0),
                  itemCount: notif.length,
                  itemBuilder: (BuildContext context, int index) {
                    var item = notif[index]; // should be outside build function
                    return Container(
                      width: 220,
                      child: ButtonBar(children: [
                        Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      item["name"],
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.bold),
                                    )),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      item["desc"],
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 14.0),
                                    )),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      item["tgl_notif"],
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 13.0),
                                    )),
                              ],
                            ))
                      ]),
                    );
                  },
                ),
              ),
              Container(
                child: ListView.separated(
                  separatorBuilder: (context, index) => Divider(
                    color: Colors.black,
                  ),
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(8.0),
                  itemCount: notif.length,
                  itemBuilder: (BuildContext context, int index) {
                    var item = notif[index]; // should be outside build function
                    return Container(
                      width: 220,
                      child: ButtonBar(children: [
                        Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      item["name"],
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.bold),
                                    )),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      item["desc"],
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 14.0),
                                    )),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      item["tgl_notif"],
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 13.0),
                                    )),
                              ],
                            ))
                      ]),
                    );
                  },
                ),
              ),
              Container(
                child: ListView.separated(
                  separatorBuilder: (context, index) => Divider(
                    color: Colors.black,
                  ),
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(8.0),
                  itemCount: notif.length,
                  itemBuilder: (BuildContext context, int index) {
                    var item = notif[index]; // should be outside build function
                    return Container(
                      width: 220,
                      child: ButtonBar(children: [
                        Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      item["name"],
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.bold),
                                    )),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      item["desc"],
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 14.0),
                                    )),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      item["tgl_notif"],
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 13.0),
                                    )),
                              ],
                            ))
                      ]),
                    );
                  },
                ),
              ),
            ],
          )),
    );
  }
}
