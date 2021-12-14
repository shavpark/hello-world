-- Query 1: Train schedules with a travel time of greater than 30 hours
SELECT * 
FROM TrainSchedule
WHERE TravelTime > 60
ORDER BY TravelTime ASC;

-- Query 2: List train stations where they have both checked baggage and unaccompanied children
SELECT ts.StationName, ts.TicketOfficeID, ts.State, a.CheckedBaggage, a. UnaccompaniedChildren
FROM TrainStation ts, Amenities a
WHERE ts.StationName = a.Code and a.CheckedBaggage = "Y" and a.UnaccompaniedChildren = "Y";

-- Query 3: Passengers from Florida
SELECT p.PassengerID, p.name, t.StationName, t.TicketOfficeID, t.State
FROM Passengers p, TrainStation t
WHERE p.TicketOfficeID = t.code and t.state = "FL";

-- Query 4: Passengers by ticket office
SELECT tof.TicketOfficeName, count(distinct p.passengerid)
FROM Passengers p, TicketOffice tof
WHERE p.TicketOfficeID = tof.TicketOfficeID
group by  tof.TicketOfficeName
order by 1;

-- Query 5: Revenue by ticket office
SELECT tof.TicketOfficeName, count(distinct p.passengerid), sum(p.Fare)
FROM Passengers p, TicketOffice tof
WHERE p.TicketOfficeID = tof.TicketOfficeID
group by  tof.TicketOfficeName
order by 1;