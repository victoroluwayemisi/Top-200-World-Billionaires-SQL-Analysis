SELECT MAX(age) AS oldest_billionaire,
MIN(age) AS youngest_billionaire,
MAX(age) - MIN(age) AS age_difference_between_oldest_and_youngest_billionaire
FROM Top200RichestPersonintheWorld;

SELECT COUNT(*) AS billionaires_count
FROM Top200RichestPersonintheWorld;

SELECT MAX(networth_billion) AS highest_net_worth
FROM Top200RichestPersonintheWorld;

SELECT ROUND(SUM(networth_billion), 2) AS combined_net_worth_of_billionaires
FROM Top200RichestPersonintheWorld;

SELECT MIN(networth_billion) AS lowest_net_worth
FROM Top200RichestPersonintheWorld;

SELECT ROUND(AVG(networth_billion), 2) AS average_net_worth_of_billionaires
FROM Top200RichestPersonintheWorld;

SELECT ROUND(AVG(age), 2) AS average_age_of_billionaires
FROM Top200RichestPersonintheWorld;
