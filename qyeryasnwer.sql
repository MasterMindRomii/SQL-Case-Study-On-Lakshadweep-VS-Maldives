-- 1)Retrieve the number of visitors to the Maldives in 2019?
SELECT SUM(NumberofVisitors) AS 'Number_of_Visitors' FROM TouristArrivals
WHERE Year=2019;

-- 2)Retrieve the average budget per day and best time to visit for destinations with more than 10,000 tourists in 2022?
SELECT D.AverageBudgetPerDay,D.BestTimeToVisit,IT.NumberofTourists FROM Destination D
JOIN IndianTourists IT ON D.DestinationID=IT.DestinationID
WHERE NumberofTourists>10000 AND Year=2022;

-- 3)Retrieve the unique features of tourist attractions in Lakshadweep?
SELECT UniqueFeatures FROM Destination
WHERE Name='Lakshadweep';

-- 4)Retrieve the number of Indian tourists who visited the Maldives in 2021?
SELECT SUM(NumberofTourists) AS 'Number_of_Indian_Visitor_in_Maldives' FROM IndianTourists IT
JOIN Destination D ON D.DestinationID=IT.DestinationID
WHERE Name='Maldives' AND Year=2021;

-- 5)Find the destinations with the highest tourism revenue in 2022?
SELECT TOP 1 Name, SUM(TourismRevenue) AS 'Highest' FROM Destination D
JOIN IndianTourists IT ON D.DestinationID=IT.DestinationID
WHERE Year=2022
GROUP BY Name
ORDER BY Highest DESC;