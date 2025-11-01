CREATE DATABASE global_renewable_energy_production;

USE global_renewable_energy_production;

** Questions**
       
SELECT DISTINCT Country_Name, Continent
FROM global_renewable_energy_production;


SELECT Country_Name AS Country , ROUND(sum(Energy_Produced_GWh),2) as Produced , ROUND(sum(Energy_Consumed_GWh) ,2) as consumed
FROM global_renewable_energy_production
WHERE Energy_Produced_GWh >Energy_Consumed_GWh
GROUP BY Country
ORDER BY Country DESC;


SELECT Country_Name AS Country , SUM(Energy_Produced_GWh) AS Produced
FROM global_renewable_energy_production
WHERE Source_Type LIKE 'Solar'
GROUP BY Country
ORDER BY Produced DESC LIMIT 5;


SELECT Source_Type, SUM(Energy_Produced_GWh) AS Total_Produced
FROM global_renewable_energy_production
GROUP BY Source_Type
ORDER BY Total_Produced DESC;


SELECT Year,SUM(Energy_Produced_GWh) AS Total_Produced 
FROM global_renewable_energy_production
GROUP BY Year
ORDER BY Year;


SELECT Country_Name,
       ROUND(AVG(GDP_Per_Capita), 2) AS Avg_GDP,
       SUM(Energy_Produced_GWh) AS Total_Produced
FROM global_renewable_energy_production
GROUP BY Country_Name
ORDER BY Avg_GDP DESC;




















































































