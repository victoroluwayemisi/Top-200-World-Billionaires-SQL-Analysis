SELECT industry, ROUND(SUM(networth_billion), 2) AS total_net_worth
FROM Top200RichestPersonintheWorld
GROUP BY industry
ORDER BY total_net_worth DESC
LIMIT 5;

SELECT country, COUNT (*) AS billionaires_count
FROM Top200RichestPersonintheWorld
GROUP BY country
HAVING COUNT(*) >=5
ORDER BY billionaires_count DESC;

SELECT industry, COUNT(*) AS billionaires_count
FROM Top200RichestPersonintheWorld
GROUP BY industry
ORDER BY billionaires_count DESC
LIMIT 1;

SELECT country, ROUND(AVG(networth_billion), 2) AS average_net_worth
FROM Top200RichestPersonintheWorld
GROUP BY country
ORDER BY average_net_worth DESC;

SELECT industry, ROUND(AVG(age), 2) AS average_billionaire_age
FROM Top200RichestPersonintheWorld
GROUP BY industry
ORDER BY average_billionaire_age DESC
LIMIT 1;

SELECT country, COUNT(*) AS billionaires_count
FROM Top200RichestPersonintheWorld
GROUP BY country
ORDER BY billionaires_count ASC;


