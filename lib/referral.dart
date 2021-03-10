import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class Referral extends StatefulWidget {
  const Referral({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ReferralState();
}

class _ReferralState extends State<Referral>
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
          title: Text("Referral Your Friends"),
          backgroundColor: Color(0xffda1830),
          automaticallyImplyLeading: true,
        ),
        body: SingleChildScrollView(
            // margin: EdgeInsets.symmetric(vertical: 10.0),
            child: Container(
          child: Column(
            children: [
              Container(
                  padding: EdgeInsets.fromLTRB(30, 15, 30, 0),
                  child: Image.asset(
                    "assets/images/referral_program.png",
                    height: 180,
                  )),
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
                        Container(
                            padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text("Nama :"),
                            )),
                        SizedBox(
                          height: 18,
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                          child: TextFormField(
                            textCapitalization: TextCapitalization.words,
                            decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              filled: true,
                            ),
                            validator: (value) {
                              return null;
                            },
                          ),
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        Container(
                            padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text("No. Handphone :"),
                            )),
                        SizedBox(
                          height: 18,
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              filled: true,
                              prefixText: '+62',
                            ),
                            keyboardType: TextInputType.phone,
                            validator: (value) {
                              return null;
                            },
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        Container(
                            padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text("Email :"),
                            )),
                        SizedBox(
                          height: 18,
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              filled: true,
                            ),
                            keyboardType: TextInputType.emailAddress,
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
