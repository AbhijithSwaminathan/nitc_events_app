import 'package:flutter/material.dart';

import 'package:nitc_events/widgets/event_single.dart';

import '../models/events.dart';

class EventCard extends StatelessWidget {
  final DateTime date;
  final List<Events> demoEvents;
  EventCard({
    this.date,
    this.demoEvents,
  });

  List<Events> get eventDetails {
    List<Events> temp = [];
    for (var i = 0; i < demoEvents.length; i++) {
      if (demoEvents[i].date.day == date.day &&
          demoEvents[i].date.month == date.month &&
          demoEvents[i].date.year == date.year) {
        temp.add(demoEvents[i]);
        //return demoEvents[i];
      }
    }
    return temp.length == 0 ? [] : temp;
  }

  int get noEvents {
    int no = 0;
    for (var i = 0; i < demoEvents.length; i++) {
      if (demoEvents[i].date.day == date.day &&
          demoEvents[i].date.month == date.month &&
          demoEvents[i].date.year == date.year) {
        no++;
      }
    }
    return no;
  }

  @override
  Widget build(BuildContext context) {
    if(noEvents == 0){
      return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 100,
                width: double.infinity,
                child: Card(
                  elevation: 5,
                  margin: EdgeInsets.all(10),
                  child: Stack(children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).accentColor,
                        // image: DecorationImage(
                        //   image: ExactAssetImage("assets/images/back.jpg"),
                        //   fit: BoxFit.cover,
                        // ),
                      ),
                    ),
                    Center(
                      child: Text(
                        'No Events!!',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          //fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ]),
                ),
              );
    }
    return Column(
      children: eventDetails.map((data) {
        print(noEvents);
        return  EventSingle(data);
      }).toList(),
    );
  }
}
