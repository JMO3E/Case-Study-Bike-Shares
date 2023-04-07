-- This query is to verify how the data looks like
SELECT member_casual,
       ride_length,
       day_of_week
FROM divvy_tripdata_202201;

-- This query is to see the count of casual rider on thursday
SELECT COUNT(member_casual)
FROM divvy_tripdata_202206
WHERE member_casual = "casual"
      AND 
      day_of_week = 5;

-- Creating a table to store the total count per membership by day
CREATE TABLE rider_count_per_day (
	member_casual varchar(50), 
	total_riders bigint,
	week_day varchar(25), 
	month_year varchar(25)
);

-- Initialize the variableS
SET @dates = "2022-01-01";

-- Insert the total count per membership by day
INSERT INTO rider_count_per_day
SELECT member_casual,
       COUNT(member_casual) AS total_riders,
       day_of_week,
       DATE_FORMAT(convert(@dates, DATE), '%b-%Y') AS month_year
FROM divvy_tripdata_202301
GROUP BY member_casual,day_of_week;

-- This Query is to verify the data
SELECT member_casual,
       total_riders,
       week_day,
       month_year
FROM rider_count_per_day;

-- This Query will help me change the `week_day` number to the name of the day
UPDATE rider_count_per_day
SET week_day = "Saturday"
WHERE week_day = "7";

-- This Query get the total count by membership by month
SELECT member_casual,
       SUM(total_riders) as Total,
       month_year
FROM rider_count_per_day
GROUP BY member_casual, month_year; 
