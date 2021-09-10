/* Nivell 1 
Exercici 1 */
SELECT COUNT(*) FROM Flights;

/* Exercici 2 */
SELECT Origin, AVG(ArrDelay) as prom_arribades, AVG(DepDelay) as prom_sortides
FROM Flights
GROUP BY Origin ASC;

/* Exercici 3 */
SELECT Origin, colYear, colMonth, AVG(ArrDelay) as prom_arribades
FROM Flights
GROUP BY Origin, colYear, colMonth;


/* Exercici 4 */
SELECT USAirports.City, Flights.colYear, Flights.colMonth, AVG(ArrDelay)AS prom_arribades
FROM Flights INNER JOIN USAirports ON Flights.Origin = USAirports.IATA
GROUP BY colMonth, colYear, City
ORDER BY City, colYear, prom_arribades;


/* Exercici 5 */
SELECT UniqueCarrier, colYear, colMonth, SUM(cancelled)
FROM Flights
GROUP BY UniqueCarrier, colYear, colMonth
ORDER BY SUM(cancelled) DESC;


/* Exercici 6 */
SELECT TailNum, SUM(distance)
FROM Flights
WHERE TailNum != "Null"
GROUP BY TailNum
ORDER BY SUM(distance) DESC
LIMIT 10;


/* Nivell 2
Exercici 7 */
SELECT UniqueCarrier, AVG(ArrDelay)
FROM Flights
GROUP BY UniqueCarrier
HAVING AVG(ArrDelay) > 10
ORDER BY AVG(ArrDelay) DESC;


