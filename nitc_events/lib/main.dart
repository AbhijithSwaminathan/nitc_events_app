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
        primarySwatch: Colors.cyan,
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
                child: Text('Drawer Head'),
                decoration: BoxDecoration(
                  color: Theme.of(context).accentColor,
                )),
            ListTile(
              title: Text('item 1'),
            )
          ],
        ),
      ),
    );
  }
}
