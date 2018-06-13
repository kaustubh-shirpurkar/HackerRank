SELECT *
FROM
  (SELECT CITY, LENGTH(CITY)
   FROM STATION
   ORDER BY LENGTH(CITY), CITY)
WHERE ROWNUM = 1
UNION
SELECT *
FROM
  (SELECT CITY, LENGTH(CITY)
   FROM STATION
   ORDER BY LENGTH(CITY) DESC, CITY)
WHERE ROWNUM = 1;