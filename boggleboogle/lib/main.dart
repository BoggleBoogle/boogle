import 'dart:async';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:circular_reveal_animation/circular_reveal_animation.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';

import 'pages/calendar_page.dart';

void main() {
  initializeDateFormatting().then((_) => runApp(MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TableCalendar Example',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: StartPage(),
    );
  }
}

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  //iconList
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('보글부글'),
        backgroundColor: Color.fromARGB(255, 171, 199, 100),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color.fromARGB(255, 171, 199, 100),
        selectedItemColor: Color.fromARGB(255, 32, 87, 40),
        unselectedItemColor: Colors.grey.withOpacity(.60),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        currentIndex: _selectedIndex, //현재 선택된 Index
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            label: 'Calendar',
            icon: Icon(Icons.calendar_month),
          ),
          BottomNavigationBarItem(
            label: 'Music',
            icon: Icon(Icons.calendar_month_rounded),
          ),
          BottomNavigationBarItem(
            label: 'Places',
            icon: Icon(Icons.calendar_month_sharp),
          ),
          BottomNavigationBarItem(
            label: 'Settings',
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
    );
  }
}

List _widgetOptions = [
  CalendarPage(),
  Text(
    'Music',
    style: TextStyle(fontSize: 30, fontFamily: 'DoHyeonRegular'),
  ),
  Text(
    'Places',
    style: TextStyle(fontSize: 30, fontFamily: 'DoHyeonRegular'),
  ),
  Text(
    'News',
    style: TextStyle(fontSize: 30, fontFamily: 'DoHyeonRegular'),
  ),
];
