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
  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      firstDay: DateTime.utc(2015, 1, 1),
      lastDay: DateTime.utc(2050, 12, 31),
      focusedDay: DateTime.now(),
      locale: 'ko-KR',
      calendarBuilders: CalendarBuilders(
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
            color: Color.fromARGB(128, 160, 244, 86),
            shape: BoxShape.circle,
            border: Border.all(
                color: Color.fromARGB(128, 160, 244, 86), width: 1.5)),
        todayTextStyle: TextStyle(
            fontWeight: FontWeight.bold, color: Color.fromARGB(255, 4, 84, 14)),
      ),
      headerStyle: HeaderStyle(
        formatButtonVisible: false,
        titleCentered: true,
      ),
    );
  }
}
