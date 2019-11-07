import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import './event_card.dart';

class EventDay extends StatelessWidget {
  final DateTime date;

  EventDay({this.date});


  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.centerLeft,
          child: Row(
            children: <Widget>[
              SizedBox(
                width: 35,
              ),
              Text(
                DateFormat().add_yMMMMEEEEd().format(date),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        EventCard(date: date),
      ],
    );
  }
}
