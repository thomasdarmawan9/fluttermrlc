// import 'dart:convert';
import 'package:flutter/material.dart';
// import 'package:flutter_gallery/l10n/gallery_localizations.dart';
import 'package:flutter/cupertino.dart';
import 'package:mrlcapp/listbranch.dart';
import './Login_Screen.dart';
import './rc_widget.dart';
// import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:mrlcapp/model/authUtils.dart';
// import './carousel_widget.dart';
import './classschedule.dart';
import './classhistory.dart';
import './reportstudent.dart';
import './testimoni.dart';
import './reviewclass.dart';
import './reviewshowcase.dart';
import './liststudentactivity.dart';
import 'package:mrlcapp/referral.dart';
import 'package:mrlcapp/testimoni.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // final _key = new GlobalKey<FormState>();
  final AuthUtils authUtils = AuthUtils();
  var name;
  getPref() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {
      // String name;
      name = preferences.getString('name');
      print(name);
    });
  }

  @override
  void initState() {
    super.initState();
    getPref();
  }

  Widget build(BuildContext context) {
    // to get size
    // var size = MediaQuery.of(context).size;

    // // style
    // var cardTextStyle = TextStyle(
    //     fontFamily: "Montserrat Regular",
    //     fontSize: 14,
    //     color: Color.fromRGBO(63, 63, 63, 1)
    // );

    // logout() async {
    //   SharedPreferences prefs = await SharedPreferences.getInstance();
    //   prefs?.clear();
    //   Navigator.of(context).pushAndRemoveUntil(
    //     MaterialPageRoute(builder: (context) => LoginPage()),
    //     (Route route) => false,
    //   );
    // }

    final drawerHeader = Container(
      height: 60.0,
      child: DrawerHeader(
        child: new Row(
          children: [
            new Text("Menu",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                )),
            new Expanded(
              child: Text("Hai\nThomas",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  )),
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: const Color(0xffda1830),
        ),
        padding: EdgeInsets.fromLTRB(13, 0, 13, 0),
      ),
    );

    final drawerItems = ListView(
      children: [
        drawerHeader,
        ExpansionTile(
          onExpansionChanged: (expanded) {},
          title: Text(
            "Regular class",
          ),
          leading: const Icon(Icons.list),
          children: [
            ListTile(
              title: Text(
                "Class schedule",
              ),
              leading: const Icon(Icons.schedule),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ClassSchedule()),
                );
              },
            ),
            ListTile(
              title: Text(
                "Class history",
              ),
              leading: const Icon(Icons.book),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ClassHistory()),
                );
              },
            ),
          ],
        ),
        new Divider(
          height: 16.0,
          color: Colors.red,
        ),
        ListTile(
          title: Text(
            "Student Activity",
          ),
          leading: const Icon(Icons.assignment_ind),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ListSA()),
            );
          },
        ),
        new Divider(
          height: 16.0,
          color: Colors.red,
        ),
        ExpansionTile(
          title: Text(
            "Parents Trainer Meeting",
          ),
          leading: const Icon(Icons.reduce_capacity),
          children: [
            ListTile(
              title: Text(
                "Report students",
              ),
              leading: const Icon(Icons.bookmark_border),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ReportStudents()),
                );
              },
            ),
            ListTile(
              title: Text(
                "Your testimony",
              ),
              leading: const Icon(Icons.history_edu),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TestimoniParents()),
                );
              },
            ),
            ListTile(
              title: Text(
                "Referral your friends",
              ),
              leading: const Icon(Icons.people_alt_rounded),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Referral()),
                );
              },
            ),
          ],
        ),
        new Divider(
          height: 16.0,
          color: Colors.red,
        ),
        ListTile(
          title: Text(
            "Our Branch",
          ),
          leading: const Icon(Icons.business),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ListBranch()),
            );
          },
        ),
        new Divider(
          height: 16.0,
          color: Colors.red,
        ),
        ExpansionTile(
          title: Text(
            "Review",
          ),
          leading: const Icon(Icons.rate_review),
          children: [
            ListTile(
              title: Text(
                "Class review",
              ),
              leading: const Icon(Icons.rate_review),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ReviewClass()),
                );
              },
            ),
            ListTile(
              title: Text(
                "Showcase review",
              ),
              leading: const Icon(Icons.rate_review),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ReviewShowcase()),
                );
              },
            ),
          ],
        ),
        new Divider(
          height: 10.0,
          color: Colors.red,
        ),
        ListTile(
          title: Text(
            "Contact Us",
          ),
          leading: const Icon(Icons.contact_phone),
          onTap: () {
            showModalBottomSheet(
                context: context, builder: (ctn) => _buildBottomSheet(ctn));
          },
        ),
        new Divider(
          height: 10.0,
          color: Colors.red,
        ),
        Container(
          padding: EdgeInsets.fromLTRB(40, 10, 40, 0),
          // height: 100.0,
          child: new FloatingActionButton.extended(
            elevation: 2,
            backgroundColor: Color(0xffda1830),
            heroTag: "btnlogout",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
            label: Text(
              "Logout",
              style: TextStyle(fontSize: 15),
            ),
          ),
        ),
      ],
    );
    return Scaffold(
      appBar: AppBar(
          // automaticallyImplyLeading: false,
          backgroundColor: Color(0xffda1830),
          title: Text("Home"),
          actions: <Widget>[
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                  child: Image.asset(
                    'assets/mrlc_white.png',
                    width: 40,
                  ),
                )
              ],
            )
          ]),
      body: Center(
        child: BottomNavigationBarExample(),
      ),
      drawer: Drawer(
        child: drawerItems,
      ),
    );
  }

  Container _buildBottomSheet(BuildContext context) {
    return Container(
      height: 250,
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: <Widget>[
          const ListTile(title: Text('Contact Us')),
          const ListTile(title: Text('Whatsapp')),
          Container(
              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("+62 878-2999-2888"))),
          const ListTile(title: Text('Kantor Pusat MRLC')),
          Container(
              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("(021) 5010 0576")))
        ],
      ),
    );
  }
}
