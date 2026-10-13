USE Project;
SELECT * FROM house_pricing_cleaneddata;

# 1] Find the number of  properties in each city. 

SELECT city ,count(*) as total_properties
FROM house_pricing_cleaneddata
GROUP BY city;

#  2] Find properties with area greater than 3000 sqrft.

SELECT * FROM house_pricing_cleaneddata
WHERE area_sqft >3000;

# 3] Find the property with the maximum area in each city. 

SELECT city,max(area_sqft)
FROM  house_pricing_cleaneddata
GROUP BY city;

# 4]  Display the all properties built year after the year 2000 sorted by city. 

SELECT * FROM house_pricing_cleaneddata
WHERE year_built > 2000
ORDER BY city;

# 5] Find cities where the average area is greater than 2500 sqft. 

SELECT city, AVG(area_sqft)
FROM house_pricing_cleaneddata
GROUP BY city
HAVING AVG(area_sqft) > 2500;

# 6] Find the number of properties in each locality

SELECT locality, count(*) as total_properties
FROM house_pricing_cleaneddata
GROUP BY locality
ORDER BY total_properties DESC;

# 7] Find properties whose area is greater than the overall average area. 

SELECT * FROM house_pricing_cleaneddata
WHERE area_sqft > ( SELECT AVG(area_sqft) FROM house_pricing_cleaneddata);

# 8] Find the number of properties for each city and property type combination. 

SELECT city , property_type ,count(*)
FROM house_pricing_cleaneddata
GROUP BY city ,property_type
ORDER BY city, property_type;


# 9] Find the localities where the average number of bedrooms is greater than 3. 

SELECT locality, AVG(bedrooms)
FROM house_pricing_cleaneddata
GROUP BY locality
HAVING AVG(bedrooms) > 3;

# 10] Find the newest property in each city. 

SELECT city, max(year_built) as newest_property
FROM house_pricing_cleaneddata
GROUP BY city;

# 11] Find the total number of bedrooms available in each city. 

SELECT city, sum(bedrooms)
FROM house_pricing_cleaneddata
GROUP BY city;

# 12]  Find the properties that were built between 1990 and 2010 and have more than 2 bedrooms. 

SELECT * FROM house_pricing_cleaneddata
WHERE year_built BETWEEN 1990 AND 2010
AND bedrooms >2;

# 13] Find the property type that has the highest average area. 

SELECT property_type ,AVG(area_sqft) as average_area
FROM house_pricing_cleaneddata
GROUP BY property_type
ORDER BY average_area DESC
LIMIT 1;

# 14] Find each city's average area and show only cities having more than 5 properties. 

SELECT city , count(*) as total_properties, 
AVG(area_sqft) as average_area
FROM house_pricing_cleaneddata
GROUP BY city
HAVING count(*) > 5;

# 15 Find the number of properties by city and condition but display 
# only combinations having at least 2 properties. 




























