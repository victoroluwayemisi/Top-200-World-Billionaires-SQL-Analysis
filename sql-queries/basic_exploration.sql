SELECT *
FROM Top200RichestPersonintheWorld;

SELECT *
FROM Top200RichestPersonintheWorld
ORDER BY networth_billion DESC
LIMIT 10;

SELECT COUNT(DISTINCT country)
FROM Top200RichestPersonintheWorld;

SELECT COUNT(DISTINCT industry)
FROM Top200RichestPersonintheWorld;

SELECT DISTINCT industry
FROM Top200RichestPersonintheWorld;

SELECT DISTINCT country
FROM Top200RichestPersonintheWorld;