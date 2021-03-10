import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';

class TestimoniParents extends StatefulWidget {
  const TestimoniParents({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _TestimoniParentsState();
}

class _TestimoniParentsState extends State<TestimoniParents>
    with SingleTickerProviderStateMixin {
  List<String> images = [
    "assets/images/slide_2.png",
    "assets/images/slide_2.png",
    "assets/images/slide_2.png",
    "assets/images/slide_2.png",
    "assets/images/slide_2.png",
    "assets/images/slide_2.png",
    "assets/images/slide_2.png",
    "assets/images/slide_2.png",
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color(0xfff5f5f5),
        floatingActionButton: new FloatingActionButton(
          backgroundColor: Color(0xffda1830),
          onPressed: () => Fluttertoast.showToast(msg: 'Tambah Data'),
          child: const Icon(Icons.add),
        ),
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
          title: Text("Testimoni"),
          backgroundColor: Color(0xffda1830),
          automaticallyImplyLeading: true,
        ),
        body: GridView(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          physics:
              BouncingScrollPhysics(), // if you want IOS bouncing effect, otherwise remove this line
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2), //change the number as you want
          children: images.map((url) {
            return Card(child: Image.asset(url));
          }).toList(),
        ),
      ),
    );
  }
}
