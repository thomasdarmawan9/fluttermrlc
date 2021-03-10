// import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
// import 'package:flutter_gallery/l10n/gallery_localizations.dart';
import 'package:flutter/cupertino.dart';
// import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:mrlcapp/listbranch.dart';
import 'package:mrlcapp/referral.dart';
import 'package:mrlcapp/testimoni.dart';
import './carousel_widget.dart';
import './classschedule.dart';
import './classhistory.dart';
import './reportstudent.dart';
import './testimoni.dart';
import './reviewclass.dart';
import './reviewshowcase.dart';

class Tab1 extends StatefulWidget {
  const Tab1({Key key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _Tab1State();
}

class _Tab1State extends State<Tab1> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
      // child: Icon(
      // Icons.cloud, size: 64.0, color: Colors.teal
      // ),
      child: SizedBox(
        child: Column(children: <Widget>[
          //CARD RC
          Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)),
              color: Colors.white,
              // The elevation determines shade.
              elevation: 3.0,
              child: SizedBox(
                height: 200.0,
                child: Column(children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(45, 20, 0, 15),
                      child: Text(
                        'Regular Class',
                        textAlign: TextAlign.left,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                            padding: EdgeInsets.fromLTRB(40, 0, 10, 0),
                            child: Card(
                              child: InkWell(
                                // splashColor: Colors.red,
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ClassSchedule()),
                                  );
                                },
                                child: Image.asset(
                                  'assets/images/class_schedule.png',
                                  fit: BoxFit.fill,
                                ),
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              // color: Colors.red,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              semanticContainer: true,
                            )),
                      ),
                      Expanded(
                        child: Padding(
                            padding: EdgeInsets.fromLTRB(10, 0, 40, 0),
                            child: Card(
                              child: InkWell(
                                // splashColor: Colors.red,
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ClassHistory()),
                                  );
                                },
                                child: Image.asset(
                                  'assets/images/class_history.png',
                                  fit: BoxFit.fill,
                                ),
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              color: Colors.red,
                              clipBehavior: Clip.antiAlias,
                            )),
                      )
                    ],
                  ),
                  Row(children: <Widget>[
                    Expanded(
                        child: Padding(
                      padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                      child: Text(
                        "Class Schedule",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 13.0),
                      ),
                    )),
                    Expanded(
                        child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 30, 0),
                      child: Text(
                        "Class History",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 13.0),
                      ),
                    )),
                  ]),
                ]),
              ),
            ),
          ),

          SizedBox(
            height: 30.0,
          ),

          Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Students Activity",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
          ),
          SizedBox(
            height: 13.0,
          ),

          CarouselSlider(
            options: CarouselOptions(
              autoPlay: false,
              aspectRatio: 2.0,
              enlargeCenterPage: false,
              enableInfiniteScroll: true,
            ),
            items: imageSlidersStudentActivity,
          ),
          SizedBox(
            height: 30.0,
          ),

          Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Program Unggulan Merry Learning Centre",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Untuk anak & remaja usia 8-19 hingga program untuk semua usia",
                  textAlign: TextAlign.left,
                )),
          ),
          SizedBox(
            height: 13.0,
          ),

          //Carousel
          CarouselSlider(
            options: CarouselOptions(
              autoPlay: true,
              aspectRatio: 1.3,
              enlargeCenterPage: false,
            ),
            items: imageSliders,
          ),

          SizedBox(
            height: 30.0,
          ),

          //CARD PTM
          Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)),
              color: Colors.white,
              // The elevation determines shade.
              elevation: 3.0,
              child: SizedBox(
                height: 200.0,
                child: Column(children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(45, 20, 0, 15),
                      child: Text(
                        'Parents Trainer Meeting',
                        textAlign: TextAlign.left,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                            padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Card(
                              child: InkWell(
                                // splashColor: Colors.red,
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ReportStudents()),
                                  );
                                },
                                child: Image.asset(
                                  'assets/images/report_students.png',
                                  fit: BoxFit.fill,
                                ),
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              color: Colors.red,
                              clipBehavior: Clip.antiAlias,
                            )),
                      ),
                      Expanded(
                        child: Padding(
                            padding: EdgeInsets.fromLTRB(7, 0, 7, 0),
                            child: Card(
                              child: InkWell(
                                // splashColor: Colors.red,
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            TestimoniParents()),
                                  );
                                },
                                child: Image.asset(
                                  'assets/images/testimoni_parent.png',
                                  fit: BoxFit.fill,
                                ),
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              color: Colors.red,
                              clipBehavior: Clip.antiAlias,
                            )),
                      ),
                      Expanded(
                        child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                            child: Card(
                              child: InkWell(
                                // splashColor: Colors.red,
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Referral()),
                                  );
                                },
                                child: Image.asset(
                                  'assets/images/referral.png',
                                  fit: BoxFit.fill,
                                ),
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              color: Colors.red,
                              clipBehavior: Clip.antiAlias,
                            )),
                      ),
                    ],
                  ),
                  Row(children: <Widget>[
                    Expanded(
                        child: Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Text(
                        "Report\nStudents",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 13.0),
                      ),
                    )),
                    Expanded(
                        child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Text(
                        "Testimoni\nParents",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 13.0),
                      ),
                    )),
                    Expanded(
                        child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 20, 14),
                      child: Text(
                        "Referral",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 13.0),
                      ),
                    )),
                  ]),
                ]),
              ),
            ),
          ),

          SizedBox(
            height: 20.0,
          ),

          // Slide Our Branch
          Container(
            width: double.infinity,
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                new Text("Our Branch",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
                new Expanded(
                    child: Container(
                        alignment: Alignment.centerRight,
                        child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ListBranch()),
                              );
                            },
                            child: Text(
                              "See detail",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  decoration: TextDecoration.underline),
                            )))),
              ],
            ),
          ),

          SizedBox(
            height: 13.0,
          ),

          CarouselSlider(
            options: CarouselOptions(
              autoPlay: true,
              aspectRatio: 1,
              enlargeCenterPage: true,
              enableInfiniteScroll: true,
            ),
            items: imageBranchs,
          ),

          SizedBox(
            height: 30.0,
          ),
          //Card Review
          Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)),
              color: Colors.white,
              // The elevation determines shade.
              elevation: 3.0,
              child: SizedBox(
                height: 200.0,
                child: Column(children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(45, 20, 0, 0),
                      child: Text(
                        'Review',
                        textAlign: TextAlign.left,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                            padding: EdgeInsets.fromLTRB(40, 0, 10, 0),
                            child: Card(
                              child: InkWell(
                                // splashColor: Colors.red,
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ReviewClass()),
                                  );
                                },
                                child: Image.asset(
                                  'assets/images/class_review.png',
                                  fit: BoxFit.fill,
                                ),
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              // color: Colors.red,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              semanticContainer: true,
                            )),
                      ),
                      Expanded(
                        child: Padding(
                            padding: EdgeInsets.fromLTRB(10, 0, 40, 0),
                            child: Card(
                              child: InkWell(
                                // splashColor: Colors.red,
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ReviewShowcase()),
                                  );
                                },
                                child: Image.asset(
                                  'assets/images/review_after_showcase.png',
                                  fit: BoxFit.fill,
                                ),
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              color: Colors.red,
                              clipBehavior: Clip.antiAlias,
                            )),
                      )
                    ],
                  ),
                  Row(children: <Widget>[
                    Expanded(
                        child: Padding(
                      padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                      child: Text(
                        "Review Class",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 13.0),
                      ),
                    )),
                    Expanded(
                        child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 30, 0),
                      child: Text(
                        "Review Showcase",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 13.0),
                      ),
                    )),
                  ]),
                ]),
              ),
            ),
          ),

          //Student Activity
          SizedBox(
            height: 30.0,
          ),
        ]),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Center(
          child: Hero(
            tag: 'imageHero',
            child: Image.asset(
              "assets/images/slide_6.png",
            ),
          ),
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
