import './clubs.dart';
import './events.dart';
import './place.dart';

class EventsList {
  EventsList();
  final adv = Clubs(
    clubName: "Adventure Club",
    clubImage: "assets/images/clubs/adventure.jpg",
  );

  final aero = Clubs(
    clubName: "Aero Unwired",
    clubImage: "assets/images/clubs/aerounwired.jpg",
  );

  final av = Clubs(
    clubName: "Audio Visual Club",
    clubImage: "assets/images/clubs/av.png",
  );

  final cm = Clubs(
    clubName: "Club Math",
    clubImage: "assets/images/clubs/clubmath.jpg",
  );

  // final  = Clubs(
  //   clubName: ,
  //   clubImage: ,
  // );

  // final  = Clubs(
  //   clubName: ,
  //   clubImage: ,
  // );

  // final  = Clubs(
  //   clubName: ,
  //   clubImage: ,
  // );

  // final  = Clubs(
  //   clubName: ,
  //   clubImage: ,
  // );

  final nss = Clubs(
    clubName: 'NSS',
    clubImage: "assets/images/clubs/nss.jpg",
  );

  List<Events> demo() {
    List<Events> temp = [
      Events(
        eventName: 'NSS Anual Day',
        club: Clubs(
          clubName: nss.clubName,
          clubImage: nss.clubImage,
        ),
        place: Place(
          placeName: 'Central Circle',
          imagePath: "assets/images/places/nitc.jpeg",
        ),
        date: DateTime.utc(2019, 11, 8, 14),
      ),
      Events(
        eventName: 'NSS Joint',
        club: Clubs(
          clubName: cm.clubName,
          clubImage: adv.clubImage,
        ),
        place: Place(
          placeName: 'Central Circle',
          imagePath: "assets/images/places/nitc.jpeg",
        ),
        date: DateTime.utc(2019, 11, 11, 17),
      ),
    ];
    temp.add(
      Events(
        eventName: "Induction",
        club: Clubs(
          clubName: cm.clubName,
          clubImage: cm.clubImage,
        ),
        place: Place(
          placeName: 'Central Circle',
          imagePath: "assets/images/places/nitc.jpeg",
        ),
        date: DateTime.utc(2019, 11, 13, 9),
      ),
    );
    return temp;
  }

  /*
  -----------------------------------------------------
                   CLUBS 
  -----------------------------------------------------
  Clubs(
        clubName: 'NSS',
        clubImage: "assets/images/clubs/nss.jpg",
      )
  Clubs(
        clubName: 'Adventure Club',
        clubImage: "assets/images/clubs/.jpg",
      )
  Clubs(
        clubName: 'NSS',
        clubImage: "assets/images/clubs/nss.jpg",
      )
  Clubs(
        clubName: 'NSS',
        clubImage: "assets/images/clubs/nss.jpg",
      )
  Clubs(
        clubName: 'NSS',
        clubImage: "assets/images/clubs/nss.jpg",
      )
  Clubs(
        clubName: 'NSS',
        clubImage: "assets/images/clubs/nss.jpg",
      )
  Clubs(
        clubName: 'NSS',
        clubImage: "assets/images/clubs/nss.jpg",
      )
  Clubs(
        clubName: 'NSS',
        clubImage: "assets/images/clubs/nss.jpg",
      )


  ------------------------------------------------------
                  Places
  ------------------------------------------------------

  */

}
