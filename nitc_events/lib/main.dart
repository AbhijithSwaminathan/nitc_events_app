import 'package:flutter/material.dart';

import './widgets/events_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NITC EVENTS',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        accentColor: Colors.deepPurple[300],
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NITC Events'),
        actions: <Widget>[],
      ),
      body: EventsView(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
                child: Text('NITC Events Beta v0.0.1'),
                decoration: BoxDecoration(
                  color: Theme.of(context).accentColor,
                )),
            ListTile(
              title: Text('Upcomming Events'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EventsView(),
                  ),
                );
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Archived Events'),
              onTap: () {Navigator.pop(context);},
            ),
          ],
        ),
      ),
    );
  }
}
