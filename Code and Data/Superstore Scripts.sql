-- Calculating YTD Sales 
SELECT FLOOR(SUM("Sales")) as "YTD Sales"
FROM SuperstoreFeaturesClean
WHERE "Order Date" > "2022-01-01";

-- Calculating YTD Profit
SELECT FLOOR(SUM("Profit")) as "YTD Profit"
FROM SuperstoreFeaturesClean
WHERE "Order Date" > "2022-01-01";

-- Calculating Profit Ratio 
SELECT SUM("Profit")/SUM("Sales") AS "Profit Ratio"
FROM SuperstoreFeaturesClean;

-- Calculating Prior YTD Sales
SELECT FLOOR(SUM("Sales")) as "Prior YTD Sales"
FROM SuperstoreFeaturesClean
WHERE "Order Date" > " 2021-01-01" AND "Order Date" < "2022-01-01";

-- Calculating Prior YTD Profit
SELECT FLOOR(SUM("Profit")) as "Prior YTD Profit"
FROM SuperstoreFeaturesClean
WHERE "Order Date" > " 2021-01-01" AND "Order Date" < "2022-01-01";

-- Calculating Top Selling Product by State
SELECT "Product Name", MAX("Sales") as "Total Sales", "State"
FROM SuperstoreFeaturesClean
GROUP BY "State"
