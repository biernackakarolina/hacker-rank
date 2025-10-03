SET @rowindex := -1;
 
SELECT
   ROUND(AVG(s.lat_n), 4) as Median 
FROM
   (SELECT @rowindex:=@rowindex + 1 AS rowindex,
           station.lat_n AS lat_n
    FROM station
    ORDER BY station.lat_n) AS s
WHERE s.rowindex IN (FLOOR(@rowindex / 2), CEIL(@rowindex / 2));
