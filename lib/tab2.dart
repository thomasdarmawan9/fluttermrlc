// import 'dart:convert';
import 'package:flutter/material.dart';
// import 'package:flutter_gallery/l10n/gallery_localizations.dart';
import 'package:flutter/cupertino.dart';

class Tab2 extends StatefulWidget {
  const Tab2({Key key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _Tab2State();
}

  void handleClick(String value) {
    switch (value) {
      case 'Edit Nama Lengkap':
        print("edit nama lengkap");
        break;
      case 'Edit Nomor Telepon':
        print("edit nomor telepon");
        break;
      case 'Edit Password':
        print("password");
        break;
    }
  }

class _Tab2State extends State<Tab2> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: SizedBox(
          child: Column(children: <Widget>[
        Card(
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Image.asset(
            'assets/thomas.jpg',
            fit: BoxFit.fill,
            height: 250.0,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 5,
        ),
        SizedBox(
          height: 15.0,
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
          child: Align(
            alignment: Alignment.centerRight,
            child: RotatedBox(
              quarterTurns: 1,
              child: PopupMenuButton<String>(
                onSelected: handleClick,
                itemBuilder: (BuildContext context) {
                  return {
                    'Edit Nama Lengkap',
                    'Edit Nomor Telepon',
                    'Edit Password'
                  }.map((String choice) {
                    return PopupMenuItem<String>(
                      value: choice,
                      child: Text(choice),
                    );
                  }).toList();
                },
              ),
            ),
          ),
        ),
        Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Nama User",
              textAlign: TextAlign.left,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
            )),
        SizedBox(
          height: 4.0,
        ),
        Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Thomas Darmawan",
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 13.0),
            )),
        SizedBox(
          height: 25.0,
        ),
        Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "No. Telp",
              textAlign: TextAlign.left,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
            )),
        SizedBox(
          height: 4.0,
        ),
        Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "081218573272",
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 13.0),
            )),
        SizedBox(
          height: 25.0,
        ),
        Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Jumlah Anak",
              textAlign: TextAlign.left,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
            )),
        SizedBox(
          height: 4.0,
        ),
        Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "2",
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 13.0),
            )),
        SizedBox(
          height: 25.0,
        ),
        Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Nama Anak",
              textAlign: TextAlign.left,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
            )),
        SizedBox(
          height: 4.0,
        ),
        Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Thomas Alfa Edison\nThomas Matulesi",
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 13.0),
            )),
      ])),
    );
  }
}
