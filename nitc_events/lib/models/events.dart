import 'package:flutter/foundation.dart';

import './clubs.dart';
import './place.dart';

class Events {
  final String eventName;
  final Place place;
  final Clubs club;
  final DateTime date;

  Events({
    @required this.eventName,
    @required this.date,
    @required this.club,
    @required this.place,
  });
}
