import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/events.dart';
import '../models/clubs.dart';
import '../models/place.dart';

class EventCard extends StatelessWidget {
  final DateTime date;
  EventCard({
    this.date,
  });

  final List<Events> demoEvents = [
    Events(
      eventName: 'NSS Anual Day',
      club: Clubs(
        clubName: 'NSS',
        clubImage: "assets/images/clubs/nss.jpg",
      ),
      place: Place(
        placeName: 'Central Circle',
        imagePath: "assets/images/places/nitc.jpeg",
      ),
      date: DateTime.now(),
    ),
    Events(
      eventName: 'NSS Joint body meeting',
      club: Clubs(
        clubName: 'NSS',
        clubImage: "assets/images/clubs/nss.jpg",
      ),
      place: Place(
        placeName: 'Central Circle',
        imagePath: "assets/images/places/nitc.jpeg",
      ),
      date: DateTime.now().add(Duration(days: 3)),
    ),
  ];

  List<List<Events>> get eventDetails {
    return List.generate(1, (index) {
      List<Events> temp = [];
      for (var i = 0; i < demoEvents.length; i++) {
        if (demoEvents[i].date.day == date.day &&
            demoEvents[i].date.month == date.month &&
            demoEvents[i].date.year == date.year) {
          temp.add(demoEvents[i]);
          // return demoEvents[i];
        }
      }
      return temp;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: eventDetails.map((data) {
        return data.length == 0
            ? Container(
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
                        'No Events Today!!',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          //fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ]),
                ),
              )
            : Container(
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
                                  color: Colors.orange,
                                  shape: BoxShape.circle,
                                ),
                                child:
                                    Image.asset(demoEvents[0].club.clubImage),

                                // child: CircleAvatar(
                                //   radius: 30,
                                //   backgroundColor: Colors.blue,
                                // ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Text(
                                demoEvents[0].club.clubName,
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Text(
                                demoEvents[0].eventName,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(3.5),
                              child: Text(
                                DateFormat.jm().format(demoEvents[0].date),
                              ),
                            ),
                            Text(demoEvents[0].place.placeName),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(
                          child: Image.asset(
                            demoEvents[0].place.imagePath,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
      }).toList(),
    );
  }
}
