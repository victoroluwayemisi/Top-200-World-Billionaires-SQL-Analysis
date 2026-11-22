SELECT name, industry, networth_billion
FROM Top200RichestPersonintheWorld
ORDER BY networth_billion DESC
LIMIT 1;

SELECT COUNT(age) AS count_of_above_50_billionaires, 
SUM(networth_billion) AS total_wealth_of_above_50_billionaires
FROM Top200RichestPersonintheWorld
WHERE age > 50;

SELECT MAX(networth_billion) AS richest_billionaire,
MIN(networth_billion) AS poorest_billionaire,
MAX(networth_billion) - MIN(networth_billion) AS net_worth_range
FROM Top200RichestPersonintheWorld;

SELECT COUNT (networth_billion) AS number_of_billionaires_with_over_50_billion_net_worth
FROM Top200RichestPersonintheWorld
WHERE networth_billion > 50;


SELECT (SELECT COUNT (age) 
FROM Top200RichestPersonintheWorld
WHERE age < 50) AS number_less_than_50_years,
COUNT (*) AS billionaires_count,
(SELECT COUNT (age) 
FROM Top200RichestPersonintheWorld
WHERE age < 50) * 100/ COUNT(*) AS percentage_younger_than_50
FROM Top200RichestPersonintheWorld;

SELECT COUNT(age) AS count_of_below_50_billionaires, 
SUM(networth_billion) AS total_wealth_of_below_50_billionaires
FROM Top200RichestPersonintheWorld
WHERE age < 50;

SELECT industry, SUM(networth_billion) AS total_industry_net_worth
FROM Top200RichestPersonintheWorld
GROUP BY industry
ORDER BY total_industry_net_worth DESC
LIMIT 1;

SELECT industry, SUM(networth_billion) AS total_industry_net_worth
FROM Top200RichestPersonintheWorld
GROUP BY industry
ORDER BY total_industry_net_worth DESC
LIMIT 1;

SELECT industry, COUNT(*) AS number_of_billionaires_per_industry
FROM Top200RichestPersonintheWorld
GROUP BY industry
HAVING number_of_billionaires_per_industry >= 10
ORDER BY number_of_billionaires_per_industry DESC;

SELECT country, SUM(networth_billion) AS combined_billionaires_wealth
FROM Top200RichestPersonintheWorld
ORDER BY combined_billionaires_wealth DESC
LIMIT 1;

SELECT country, ROUND(AVG(networth_billion), 2) AS average_billionaires_net_worth
FROM Top200RichestPersonintheWorld
ORDER BY average_billionaires_net_worth DESC
LIMIT 1;

