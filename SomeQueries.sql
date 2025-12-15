--Edit Table
SELECT 
Rank,
cca3,
country,
capital,
continent,
v.Year,
v.population,
area,
density,
growth_rate,
world_population_percentage
From world_population
Cross join Lateral 
(
    Values
    (2022,population_2022),
    (2020,population_2020),
    (2015,population_2015),
    (2010,population_2010),
    (2000,population_2000),
    (1990,population_1990),
    (1980,population_1980),
    (1970,population_1970)
) AS v(year, population)
Limit 1872;
---------------------------------------------------------------

--Highest Country BY Population For 2022 in every Continent
WITH Base_Table AS (
    SELECT
        continent,
        country,
        population_2022 AS pop
    FROM world_population
),
Second_Table AS (
    SELECT
        continent,
        MAX(population_2022) AS max_pop
    FROM world_population
    GROUP BY continent
)
SELECT 
    b.continent,
    b.country,
    b.pop
FROM Base_Table b
JOIN Second_Table s
    ON b.continent = s.continent
   AND b.pop = s.max_pop;
--------------------------------------------------------------

--Top 10 Country By Pop in 2022
select 
country,
population_2022
From world_population
ORDER BY population_2022 DESC
Limit 10;
--------------------------------------------------------------

--Most Highest Country in Density (Population/km)
SELECT 
country,
capital,
density 
From world_population
Where continent = 'Africa' and density > 200
ORDER BY density DESC ;
---------------------------------------------------------------

--Top 10 Smallest Countries
Select 
country,
capital,
area
From world_population
ORDER BY area ASC
limit 10;
---------------------------------------------------------------

--Top 10 Continent With highest Population
SELECT 
continent,
Sum(population_2022) 
From world_population
GROUP BY continent
ORDER BY Sum(population_2022) DESC;
---------------------------------------------------------------

--Continent With Largest Population Increas From 1990 to 2022
SELECT 
continent,
Sum(population_2022)-Sum(population_1970) As Population_Increase
From world_population
GROUP BY continent
ORDER BY Population_Increase DESC;
----------------------------------------------------------------

----Most Highest Country in Density (Population/km) From Every Continent
WITH Base_Table As 
(
    SELECT 
    Continent,
    country,
    density
    FROM world_population
),
Second_Table AS 
(
    Select 
    continent,
    Max(density) As Maxi
    FROM world_population
    GROUP BY continent
    ORDER BY Max(density) DESC
)
SELECT 
Base_Table.continent,
Base_Table.country,
Base_Table.Density
From Base_Table
INNER JOIN Second_Table ON Second_Table.Maxi = Base_Table.density
--------------------------------------------------------------------

--- countries where population density is above the global average but area is below the global median.
SELECT
country,
density,
area
From world_population
Where density > 
(
    SELECT 
    Round(Avg(density)) As Average_Density
    From world_population
)
and area < 
(
    Select 
    Round(Avg(area)) 
    From world_population
)
Order BY density