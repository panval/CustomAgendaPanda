import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class Agenda extends StatelessWidget {
  Agenda({Key? key}) : super(key: key);

  List<Appointment> appointmentDetails = <Appointment>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            child: ListView.separated(
                padding: const EdgeInsets.all(2),
                itemCount: appointmentDetails.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    onTap: () {},
                    tileColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1.0),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                    ),
                    leading: Checkbox(
                      value: false,
                      onChanged: null,
                    ),
                    title: Container(
                        child: Text(
                          '${appointmentDetails[index].subject}',
                        )),
                    subtitle: Text('Added by XY or Private Appointment'),
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                const Divider(
                  height: 5,
                ))),
      ),
    );
  }
}
