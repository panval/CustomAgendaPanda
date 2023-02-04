import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';



DataSource getCalendarDataSource() {
  final List<Appointment> appointments = <Appointment>[];
  appointments.add(Appointment(
    startTime: DateTime.now().add(Duration(days: 0, hours: 0)),
    endTime: DateTime.now().add(Duration(days: 0, hours: 5)),
    subject: 'Development Meeting   New York, U.S.A',
    color: Color(0xFFf527318),
  ));
  appointments.add(Appointment(
    startTime: DateTime.now().add(Duration(days: 0, hours: 0)),
    endTime: DateTime.now().add(Duration(days: 0, hours: 0)),
    subject: 'Project Plan Meeting   Kuala Lumpur, Malaysia',
    color: Color(0xFFfb21f66),
  ));
  appointments.add(Appointment(
    startTime: DateTime.now().add(Duration(days: 0, hours: 0)),
    endTime: DateTime.now().add(Duration(days: 0, hours: 0)),
    subject: 'Support - Web Meeting   Dubai, UAE',
    color: Color(0xFFf3282b8),
  ));
  appointments.add(Appointment(
    startTime: DateTime.now().add(Duration(days: 0, hours: 1)),
    endTime: DateTime.now().add(Duration(days: 0, hours: 2)),
    subject: 'Project Release Meeting   Istanbul, Turkey',
    color: Color(0xFFf2a7886),
  ));
  appointments.add(Appointment(
    startTime: DateTime.now().add(const Duration(hours: 0, days: 0)),
    endTime: DateTime.now().add(const Duration(hours: 0, days: 0)),
    subject: 'Customer Meeting   Tokyo, Japan',
    color: Color(0xFFffb8d62),
  ));

  return DataSource(appointments);
}


class DataSource extends CalendarDataSource {
  DataSource(List<Appointment> source) {
    appointments = source;
  }
}