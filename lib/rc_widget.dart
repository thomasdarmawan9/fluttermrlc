// import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import './tab1.dart';
import './tab2.dart';
import './tab3.dart';

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({Key key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _currentTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    // const numItems = 20;
    // const _biggerFont = TextStyle(fontSize: 18.0);

    final _kTabPages = <Widget>[
      // tab 1
      Container(
        child: Tab1(),
      ),
      // tab 2
      Container(child: Tab2()),
      // tab 3
      Container(child: Tab3()),
    ];

    final _kBottmonNavBarItems = <BottomNavigationBarItem>[
      const BottomNavigationBarItem(
        icon: Icon(Icons.home), label: 'Tab1'
      ),
      const BottomNavigationBarItem(
          icon: Icon(Icons.account_circle), label: 'Tab2'),
      const BottomNavigationBarItem(
          icon: Icon(Icons.notifications), label: 'Tab3'),
    ];

    assert(_kTabPages.length == _kBottmonNavBarItems.length);

    final bottomNavBar = BottomNavigationBar(
      items: _kBottmonNavBarItems,
      currentIndex: _currentTabIndex,
      selectedItemColor: Color(0xffda1830),
      showSelectedLabels: false,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      onTap: (int index) {
        setState(() {
          _currentTabIndex = index;
        });
      },
    );

    return Scaffold(
      backgroundColor: Color(0xffeeeeee),
      body: _kTabPages[_currentTabIndex],
      bottomNavigationBar: bottomNavBar,
    );
  }
}
