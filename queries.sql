INSERT INTO Song
(name, albumID, genreID)
VALUES
('Chronicles',1,2);

INSERT INTO Song
(name, albumID, genreID)
VALUES
('Call me later',2,2);

INSERT INTO Song
(name, albumID, genreID)
VALUES
('Cars',4,4);

INSERT INTO Album
(name, year)
VALUES
('Over the sky', 2009);

SELECT * FROM Venue
join Event on Event.venueID = Venue.id
WHERE Venue.location = 'Ithaca';

SELECT * FROM Venue
WHERE size > 10000;