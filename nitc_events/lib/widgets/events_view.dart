import 'package:flutter/material.dart';

import './event_day.dart';

class EventsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: <Widget>[
            EventDay(),
          ],
        ),
      );
  }
}