import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/events.dart';

class EventSingle extends StatelessWidget {
  final Events evnt;
  EventSingle(this.evnt);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
      ),
      child: Card(
        elevation: 5,
        margin: EdgeInsets.all(10),
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: new BoxDecoration(
                        //color: Colors.orange,
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(evnt.club.clubImage),

                      // child: CircleAvatar(
                      //   radius: 30,
                      //   backgroundColor: Colors.blue,
                      // ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Text(
                      evnt.club.clubName,
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Text(
                      evnt.eventName,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3.5),
                    child: Text(
                      DateFormat.jm().format(evnt.date),
                    ),
                  ),
                  Text(evnt.place.placeName),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                child: Image.asset(
                  evnt.place.imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
