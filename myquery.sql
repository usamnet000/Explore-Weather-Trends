/* Querys for Temperature Trend Analysis over the Last 30 Years in Riyadh
Country, Saudi Arabia
*/

-- Query for get all cities are available for "Saudi Arabia" in the given dataset
SELECT * FROM city_list
where country = 'Saudi Arabia'


-- get Years, Global Average Temp ,City Average Temp from table global_data and city_data  
SELECT global_data.year, global_data.avg_temp AS "GlobalAT", city_data.avg_temp AS "CityAT"
FROM global_data 
JOIN city_data         
ON global_data.year = city_data.year    
WHERE city LIKE 'Riyadh';
