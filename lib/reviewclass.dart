import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
// import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ReviewClass extends StatefulWidget {
  const ReviewClass({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ReviewClassState();
}

class _ReviewClassState extends State<ReviewClass>
    with SingleTickerProviderStateMixin {
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
          title: Text("Class Review"),
          backgroundColor: Color(0xffda1830),
          automaticallyImplyLeading: true,
        ),
        body: SingleChildScrollView(
            // margin: EdgeInsets.symmetric(vertical: 10.0),
            child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 15.0,
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.fromLTRB(30, 15, 30, 0),
                child: Text(
                  "Regular Class Review",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: Text(
                  "Ceritakan pengalaman menarik Anda setelah menyelesaikan Regular Class",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15.0),
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
              Container(
                  padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                  alignment: Alignment.centerLeft,
                  child: Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 3,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 18,
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                          child: Text(
                            "Rate Us",
                            style: TextStyle(
                                fontSize: 15.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          alignment: Alignment.topCenter,
                          child: RatingBar.builder(
                            initialRating: 3,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: false,
                            itemCount: 5,
                            itemPadding: EdgeInsets.symmetric(horizontal: 5.0),
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Tell us your review about MRLC class',
                            ),
                            maxLines: 5,
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                      ],
                    ),
                  )),
              SizedBox(
                height: 20.0,
              ),
              Container(
                child: ButtonBar(
                  alignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.fromLTRB(100, 0, 100, 0),
                        primary: Color(0xffda1830), // background
                        onPrimary: Colors.white, // foreground
                      ),
                      onPressed: () {},
                      child: const Text('Submit'),
                    ),
                  ],
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
