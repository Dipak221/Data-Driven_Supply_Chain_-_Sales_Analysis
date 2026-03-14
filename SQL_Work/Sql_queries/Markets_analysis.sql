SELECT * FROM sales.markets;

# Select market code, market name, and zone
SELECT markets_code, markets_name, zone
FROM sales.markets;

# Show all unique zones
SELECT DISTINCT zone
FROM sales.markets;

# Filter markets by zone
SELECT markets_code, markets_name, zone
FROM sales.markets
WHERE zone = 'North';

# Count markets per zone and sort from highest
SELECT zone, COUNT(markets_code) AS total_markets
FROM sales.markets
GROUP BY zone
ORDER BY total_markets DESC;

# Show zones having more than 2 markets
SELECT zone, COUNT(markets_code) AS total_markets
FROM sales.markets
GROUP BY zone
HAVING COUNT(markets_code) > 2;