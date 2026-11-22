SELECT *
FROM Top200RichestPersonintheWorld
WHERE networth_billion > 100
ORDER BY networth_billion DESC;

SELECT *
FROM Top200RichestPersonintheWorld
WHERE age>=40 AND age<=60;

SELECT *
FROM Top200RichestPersonintheWorld
WHERE age > 60 AND networth_billion > 50;

SELECT *
FROM Top200RichestPersonintheWorld
WHERE age < 40
ORDER BY age ASC;

SELECT *
FROM Top200RichestPersonintheWorld
WHERE country = 'Nigeria';

SELECT *
FROM Top200RichestPersonintheWorld
WHERE country = 'United States' OR country = 'China' OR country = 'India';
