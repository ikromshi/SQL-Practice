INSERT INTO Song
(name)
VALUES
('Over the sky')

SELECT * FROM Venue
join Event on Event.venueID = Venue.id
WHERE Venue.location = 'Ithaca';