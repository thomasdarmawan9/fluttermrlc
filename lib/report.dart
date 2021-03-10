// import 'dart:convert';
// import 'dart:convert';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_gallery/l10n/gallery_localizations.dart';
import 'package:flutter/cupertino.dart';

class Report extends StatefulWidget {
  const Report({Key key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _ReportState();
}

var data = {
  "nama": "Thomas Darmawan",
  "modul": [
    "Life and Success modul 1",
    "Life and Success modul 2",
    "Life and Success modul 3",
  ],
  "wsg": "banyak banyak banyak banyak banyak banyak banyak banyak banyak",
  "wcbi": "banyak banyak banyak banyak banyak banyak banyak banyak banyak",
};

// class Datas {
//   final String modul;

//   Datas({this.modul});

//   factory Datas.fromJson(Map<String, dynamic> json) {
//     return Datas(
//       modul: json['modul'],
//     );
//   }
// }

class _ReportState extends State<Report> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext contex) {
    setState(() {
      // print(Datas());
    });
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color(0xffeeeeee),
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
        body: SingleChildScrollView(
            // margin: EdgeInsets.symmetric(vertical: 10.0),
            child: Container(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Nama Students",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    data["nama"],
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
              Container(
                  padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                  alignment: Alignment.centerLeft,
                  child: Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 5,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 18,
                        ),
                        Center(
                          child: Text(
                            "Modul Yang Diikuti",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15.0),
                          ),
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        Container(
                          child: Text("Modul 1"),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Divider(
                          color: Colors.black,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Text("Mdoul 2"),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Divider(
                          color: Colors.black,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Text("Modul 3"),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  )),
              SizedBox(
                height: 35.0,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(30, 00, 30, 0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "What is good",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    data["wsg"],
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
              SizedBox(
                height: 35.0,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(30, 00, 30, 0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "What can be improve",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    data["wcbi"],
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
              SizedBox(
                height: 35.0,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(30, 00, 30, 0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Stars From Coach",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                      child: RatingBar.builder(
                        initialRating: 3,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: false,
                        itemCount: 5,
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        // onRatingUpdate: (rating) {
                        //   print(rating);
                        // },
                      ))),
              SizedBox(
                height: 45.0,
              ),
            ],
          ),
        )),
      ),
    );
  }
}
