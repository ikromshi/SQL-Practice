CREATE TABLE Artist (
  id            integer PRIMARY KEY AUTOINCREMENT,
  firstName     varchar(64) NOT NULL,
  lastName      varchar(64) NOT NULL,
);

CREATE TABLE Venue (
  id            integer PRIMARY KEY AUTOINCREMENT,
  location      varchar(64) NOT NULL,
  size          integer NOT NULL,
);

CREATE TABLE Event (
  id            integer PRIMARY KEY AUTOINCREMENT,
  dateTime      datetime NOT NULL,
  venueID       integer NOT NULL,
  FOREIGN KEY (venueID) REFERENCES Venue(id),
);

CREATE TABLE ArtistToEvent (
  id            integer PRIMARY KEY AUTOINCREMENT,
  artistID      integer NOT NULL,
  eventID       integer NOT NULL,
  FOREIGN KEY (artistID) REFERENCES Artist(id),
  FOREIGN KEY (eventID) REFERENCES Event(id),
);

CREATE TABLE Genre (
  id            integer PRIMARY KEY AUTOINCREMENT,
  name          varchar(64) NOT NULL,
);

CREATE TABLE Song (
  id            integer PRIMARY KEY AUTOINCREMENT,
  name          varchar(64) NOT NULL,
);

CREATE TABLE SongToArtist (
  id            integer PRIMARY KEY AUTOINCREMENT,
  artistID      integer NOT NULL,
  songID       integer NOT NULL,
  FOREIGN KEY (artistID) REFERENCES Artist(id),
  FOREIGN KEY (songID) REFERENCES Song(id),
);

CREATE TABLE Album (
  id            integer PRIMARY KEY AUTOINCREMENT,
  name          varchar(64) NOT NULL,
  year          year NOT NULL,
);
