import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarPage extends StatefulWidget {
  CalendarPage({Key? key}) : super(key: key);

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  DateTime? _selectedDay;
  DateTime _focusedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      firstDay: DateTime.utc(2015, 1, 1),
      lastDay: DateTime.utc(2050, 12, 31),
      focusedDay: DateTime.now(),
      locale: 'ko-KR',
      //daysOfWeekHeight: 10,
      rowHeight: 60,
      eventLoader: (day) {
        if (day.weekday == DateTime.monday && day.day < DateTime.now().day) {
          return ['hiqq', '2222'];
        } else if (day.day < DateTime.now().day) {
          return ['hi'];
        }
        return [];
      },
      calendarBuilders: CalendarBuilders(
        markerBuilder: (context, date, events) {
          if (events.length > 1) {
            return Align(
              alignment: Alignment(0.0, 3.5),
              child: Container(
                child: Image.asset(
                    '/Users/gyul/bogleboogle/boggleboogle/lib/boggle-cutout.png'),
                width: 45,
                height: 45,
              ),
            );
          } else if (events.length > 0) {
            return Align(
              alignment: Alignment(0.0, 3.5),
              child: Container(
                child: Image.asset(
                    '/Users/gyul/bogleboogle/boggleboogle/lib/boogle.png'),
                //child: Icon(Icons.favorite_border_outlined, color: Colors.red),
                width: 45,
                height: 45,
              ),
            );
          }
        },
        dowBuilder: (context, day) {
          switch (day.weekday) {
            case 1:
              return Center(
                child: Text('월'),
              );
            case 2:
              return Center(
                child: Text('화'),
              );
            case 3:
              return Center(
                child: Text('수'),
              );
            case 4:
              return Center(
                child: Text('목'),
              );
            case 5:
              return Center(
                child: Text('금'),
              );
            case 6:
              return Center(
                child: Text(
                  '토',
                  style: TextStyle(color: Colors.blue),
                ),
              );
            case 7:
              return Center(
                child: Text(
                  '일',
                  style: TextStyle(color: Colors.red),
                ),
              );
          }
        },
      ),
      calendarStyle: CalendarStyle(
        defaultTextStyle: TextStyle(
          color: Color.fromARGB(255, 141, 166, 140),
        ),
        weekendTextStyle: TextStyle(color: Color.fromARGB(255, 158, 158, 158)),
        outsideDaysVisible: false,
        todayDecoration: BoxDecoration(
          color: Color.fromARGB(0, 160, 244, 86),
          shape: BoxShape.rectangle,
        ),
        todayTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 4, 84, 14),
          decoration: TextDecoration.underline,
          decorationColor: Color.fromARGB(245, 23, 58, 21),
          //backgroundColor: Color.fromARGB(255, 141, 166, 140)
        ),
      ),
      headerStyle: HeaderStyle(
        formatButtonVisible: false,
        titleCentered: true,
      ),
    );
  }
}
