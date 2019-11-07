

import './clubs.dart';
// import './events.dart';
import './place.dart';

class EventsList {

  EventsList();

  // Place Getters
  Place get centralCircle {
    return Place(
      placeName: 'Central Circle',
      imagePath: '\'assets/images/nitc.jpeg\'',
    );
  }

  // Clubs Getters

  Clubs get nss {
    return Clubs(
      clubName: 'NSS',
      clubImage: '',
    );
  }

  // Example Events
  
}
