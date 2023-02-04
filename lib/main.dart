import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:intl/intl.dart';

import 'agenda.dart';
import 'data_source.dart';

void main() => runApp(AgendaViewCustomization());

class AgendaViewCustomization extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CustomAgenda(),
    );
  }
}

class CustomAgenda extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ScheduleExample();
}

class ScheduleExample extends State<CustomAgenda> {
  List<Appointment> appointmentDetails = <Appointment>[];

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: SfCalendar(
                initialDisplayDate: DateTime.now(),
                view: CalendarView.month,
                dataSource: getCalendarDataSource(),
                onTap: calendarTapped,
                initialSelectedDate: DateTime.now(),
              ),
            ),
            Expanded(
              child: Agenda(),
            ),
          ],
        ),
      ),
    ));
  }

  void calendarTapped(CalendarTapDetails calendarTapDetails) {
    if (calendarTapDetails.targetElement == CalendarElement.calendarCell) {
      setState(() {
        appointmentDetails =
            calendarTapDetails.appointments!.cast<Appointment>();
      });
    }
  }
}