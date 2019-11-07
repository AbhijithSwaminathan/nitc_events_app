import 'package:flutter/material.dart';

import './event_day.dart';

class EventsView extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (ctx, index){
      return EventDay(date: DateTime.now().add(Duration(days: index),),);
    },
    itemCount: 365,
    );
    // Container(
    //     child: Column(
    //       children: <Widget>[
    //         EventDay(date: DateTime.now(),),
    //       ],
    //     ),
    //   );
  }
}