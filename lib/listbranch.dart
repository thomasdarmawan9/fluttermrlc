import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import './image_screen.dart';

class ListBranch extends StatefulWidget {
  const ListBranch({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ListBranchState();
}

class _ListBranchState extends State<ListBranch>
    with SingleTickerProviderStateMixin {
  final List<Map> imageBranch = [
    {
      'cabang': 'Merry Riana Learning Centre\nPuri Indah',
      'img': 'https://merryrianalearningcentre.com/assets/imgapps/puri.png',
      'alamat':
          'Ruko Sentra Niaga Puri Indah Blok T3 no. 16, Kembangan Selatan, Jakarta Barat\n(021) 2911 7888'
    },
    {
      'cabang': 'Merry Riana Learning Centre\nPalem',
      'img': 'https://merryrianalearningcentre.com/assets/imgapps/palem.png',
      'alamat':
          'Komplek Ruko Mutiara Taman Palem Blok A5 No. 28, Cengkareng, Jakarta Barat\n(021) 2230 2033'
    },
    {
      'cabang': 'Merry Riana Learning Centre\nPermata Hijau',
      'img': 'https://merryrianalearningcentre.com/assets/imgapps/ph.png',
      'alamat':
          'Komplek Grand ITC Permata Hijau Blok Emerald 19, Kebayoran Lama, Jakarta Selatan\n(021) 548 0685'
    },
    {
      'cabang': 'Merry Riana Learning Centre\nKelapa Gading',
      'img': 'https://merryrianalearningcentre.com/assets/imgapps/kg.png',
      'alamat':
          'Ruko Graha Parkview Blok ZD/7, Jl. Raya Bulevard Timur, Pegangsaan Dua, Klp. Gading, Jakarta Utara\n(021) 2945 1389'
    },
    {
      'cabang': 'Merry Riana Learning Centre\nBanjar Wijaya',
      'img': 'https://merryrianalearningcentre.com/assets/imgapps/bw.png',
      'alamat':
          'Ruko Azores Blok B7C No. 9-10, Perumahan Banjar Wijaya, Cipondoh, Kota Tangerang\n(021) 5571 1887'
    },
    {
      'cabang': 'Merry Riana Learning Centre\nGading Serpong',
      'img': 'https://merryrianalearningcentre.com/assets/imgapps/gs.png',
      'alamat':
          'Ruko Azores Blok B7C No. 9-10, Perumahan Banjar Wijaya, Cipondoh, Kota Tangerang\n(021) 5571 1887'
    },
    {
      'cabang': 'Merry Riana Learning Centre\nBSD',
      'img': 'https://merryrianalearningcentre.com/assets/imgapps/bsd.png',
      'alamat':
          'Ruko Tol Boulevard Blok G/19 Jl. Pelayangan no. 18, Serpong, Tangerang Selatan\n(021) 5315 8270'
    },
    {
      'cabang': 'Merry Riana Learning Centre\nSurabaya',
      'img': 'https://merryrianalearningcentre.com/assets/imgapps/sby.png',
      'alamat':
          'Srijaya Building Lt. 5 Jl. Mayjen Sungkono No 212-214, Putat Gede, Kec. Sukomanunggal, Kota Surabaya, Jawa Timur 60256\n(031) 9953 7766'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          // backgroundColor: Color(0xfff5f5f5),
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
            title: Text("Our Branch"),
            backgroundColor: Color(0xffda1830),
            automaticallyImplyLeading: true,
          ),
          body: SingleChildScrollView(
            child: Column(
                children: imageBranch.map((item) {
              return Container(
                  child: Column(
                children: [
                  Card(
                    child: InkWell(
                        // splashColor: Colors.red,
                        onTap: () {
                          Navigator.push<Widget>(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ImageScreen(item["img"]),
                            ),
                          );
                        },
                        child: Stack(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              child: Image.network(
                                item["img"],
                                height: 600,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              alignment: Alignment.bottomCenter,
                              padding: EdgeInsets.fromLTRB(20, 380, 20, 0),
                              height: 580,
                              child: Card(
                                child: Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding:
                                            EdgeInsets.fromLTRB(10, 10, 10, 10),
                                        child: Text(
                                          item["cabang"],
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        ),
                                      ),
                                      Container(
                                        padding:
                                            EdgeInsets.fromLTRB(10, 10, 10, 10),
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          item["alamat"],
                                          textAlign: TextAlign.center,
                                          style: TextStyle(),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        )),
                  )
                ],
              ));
            }).toList()),
          )),
    );
  }
}
