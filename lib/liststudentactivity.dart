import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import './image_screen.dart';

class ListSA extends StatefulWidget {
  const ListSA({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ListSAState();
}

class _ListSAState extends State<ListSA> with SingleTickerProviderStateMixin {
  List<String> images = [
    'assets/images/s1.jpg',
    'assets/images/s2.jpg',
    'assets/images/s3.jpg',
    'assets/images/s4.jpg',
    'assets/images/s5.jpg',
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
          title: Text("Students Activity"),
          backgroundColor: Color(0xffda1830),
          automaticallyImplyLeading: true,
        ),
        body: GridView(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          physics:
              BouncingScrollPhysics(), // if you want IOS bouncing effect, otherwise remove this line
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1), //change the number as you want
          children: images.map((images) {
            return Card(
                child: GestureDetector(
              child: Image.asset(images),
              onTap: () {
                Navigator.push<Widget>(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ImageScreen(images),
                  ),
                );
              },
            ));
          }).toList(),
        ),
      ),
    );
  }
}
