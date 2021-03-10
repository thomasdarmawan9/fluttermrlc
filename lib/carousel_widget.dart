// import 'dart:convert';
import 'package:flutter/material.dart';
// import 'package:flutter_gallery/l10n/gallery_localizations.dart';
import 'package:flutter/cupertino.dart';
import './liststudentactivity.dart';
import 'package:url_launcher/url_launcher.dart';

final List<Map> imgList = [
  {
    'img': 'https://merryrianalearningcentre.com/assets/imgapps/slide_2.png',
    'judul': 'Merry Riana School of Public Speaking',
    'text': 'Mengajarkan teknik-teknik Public Speaking & presentasi',
    'link': 'https://merryrianalearningcentre.com/sesiperkenalanpublicspeaking/'
  },
  {
    'img': 'https://merryrianalearningcentre.com/assets/imgapps/slide_4.png',
    'judul': 'Merry Riana School of Smart Learning',
    'text': 'Mengajarkan teknik-teknik belajar & menghapal yang efektif',
    'link': 'https://merryrianalearningcentre.com/sesiperkenalansmartlearning/'
  },
  {
    'img': 'https://merryrianalearningcentre.com/assets/imgapps/slide_3.png',
    'judul': 'Merry Riana of Life & Success',
    'text': 'Mengajarkan 6 Life Skill paling penting dalam kehidupan',
    'link': 'https://merryrianalearningcentre.com/sesiperkenalanlifeandsuccess/'
  },
  {
    'img': 'https://merryrianalearningcentre.com/assets/imgapps/slide_1.png',
    'judul': 'Merry Riana Holiday Program',
    'text': 'Program 7 hari full yang hanya diadakan saat libur sekolah',
    'link': 'https://merryrianalearningcentre.com/holidayprogram/'
  },
  {
    'img': 'https://merryrianalearningcentre.com/assets/imgapps/slide_6.png',
    'judul': 'Merry Riana Public Speaking Academy',
    'text': 'Program pelatihan Public Speaking yang terbuka untuk semua usia',
    'link':
        'https://merryrianalearningcentre.com/sesiperkenalanpublicspeakingacademy/'
  },
  {
    'img': 'https://merryrianalearningcentre.com/assets/imgapps/slide_5.png',
    'judul': 'Private Coaching Public Speaking',
    'text':
        'Program belajar Public Speaking secara private di manapun & kapanpun sesuai kebutuhan Anda',
    'link':
        'https://merryrianalearningcentre.com/privatecoachingpublicspeaking/'
  }
];

final List<String> imgListSA = [
  'assets/images/s1.jpg',
  'assets/images/s2.jpg',
  'assets/images/s3.jpg',
  'assets/images/s4.jpg',
  'assets/images/s5.jpg',
];

final List<Map> imageBranch = [
  {
    'cabang': 'Merry Riana Learning Centre\nPuri Indah',
    'img': 'https://merryrianalearningcentre.com/assets/imgapps/puri.png',
  },
  {
    'cabang': 'Merry Riana Learning Centre\nPalem',
    'img': 'https://merryrianalearningcentre.com/assets/imgapps/palem.png',
  },
  {
    'cabang': 'Merry Riana Learning Centre\nPermata Hijau',
    'img': 'https://merryrianalearningcentre.com/assets/imgapps/ph.png',
  },
  {
    'cabang': 'Merry Riana Learning Centre\nKelapa Gading',
    'img': 'https://merryrianalearningcentre.com/assets/imgapps/kg.png',
  },
  {
    'cabang': 'Merry Riana Learning Centre\nBanjar Wijaya',
    'img': 'https://merryrianalearningcentre.com/assets/imgapps/bw.png',
  },
  {
    'cabang': 'Merry Riana Learning Centre\nGading Serpong',
    'img': 'https://merryrianalearningcentre.com/assets/imgapps/gs.png',
  },
  {
    'cabang': 'Merry Riana Learning Centre\nBSD',
    'img': 'https://merryrianalearningcentre.com/assets/imgapps/bsd.png',
  },
  {
    'cabang': 'Merry Riana Learning Centre\nSurabaya',
    'img': 'https://merryrianalearningcentre.com/assets/imgapps/sby.png',
  }
];

final List<Widget> imageSliders = imgList
    .map((item) => Container(
            child: Container(
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)),
            semanticContainer: true,
            clipBehavior: Clip.antiAlias,
            color: Colors.white,
            child: SizedBox(
                child: GestureDetector(
                    onTap: () {
                      _launchURL() async {
                        var url = item['link'];
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      }

                      _launchURL();
                    },
                    child: Column(children: <Widget>[
                      ClipRRect(
                          // borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          child: Stack(
                        children: <Widget>[
                          Image.network(
                            item["img"],
                            fit: BoxFit.cover,
                            width: 1000.0,
                          ),
                        ],
                      )),
                      SizedBox(
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                            child: Text(
                              '${item["judul"]}',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 14.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
                            child: Text(
                              '${item["text"]}',
                              textAlign: TextAlign.left,
                              style: TextStyle(fontSize: 13.0),
                            ),
                          ),
                        ),
                      )
                    ]))),
          ),
        )))
    .toList();

final List<Widget> imageSlidersStudentActivity = imgListSA
    .map((item) => Builder(builder: (BuildContext context) {
          return Container(
            child: Container(
              margin: EdgeInsets.all(5.0),
              child: GestureDetector(
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    child: Stack(
                      children: <Widget>[
                        Image.asset(item, fit: BoxFit.cover, width: 1000.0),
                        Positioned(
                          bottom: 0.0,
                          left: 0.0,
                          right: 0.0,
                          child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 20.0)),
                        ),
                      ],
                    )),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ListSA()),
                  );
                },
              ),
            ),
          );
        }))
    .toList();

final List<Widget> imageBranchs = imageBranch
    .map((item) => Builder(builder: (BuildContext context) {
          return Container(
            child: Container(
              margin: EdgeInsets.all(5.0),
              child: GestureDetector(
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    child: Stack(
                      children: <Widget>[
                        Image.network(item['img'],
                            fit: BoxFit.cover, width: 1000.0),
                        Positioned(
                          bottom: 0.0,
                          left: 0.0,
                          right: 0.0,
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromARGB(200, 0, 0, 0),
                                  Color.fromARGB(0, 0, 0, 0)
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                              ),
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 25.0),
                            child: Text(
                              item["cabang"],
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => ListSA()),
                  // );
                },
              ),
            ),
          );
        }))
    .toList();
