SELECT *
FROM Pokemon; 

#This is the Legendary pokemon
SELECT Name
FROM Pokemon
WHERE Legendary = "True"; 

#Top five fastest Pokemon
SELECT name, speed
FROM Pokemon
ORDER BY Speed DESC
Limit 5; 

#Top five Slowest Pokemon
SELECT name, speed
FROM Pokemon
ORDER BY Speed 
Limit 5; 

#Average Speed for Types
SELECT Type_1, Type_2, AVG(Speed) AS Average_Speed
FROM Pokemon
GROUP BY Type_1, Type_2
Order By Average_Speed;

#Average HP for Types
SELECT Type_1, Type_2, AVG(HP) AS Average_Health
FROM Pokemon
GROUP BY Type_1, Type_2
Order By Average_Health;

#Number of Single type pokemon
SELECT Count(Name)
FROM Pokemon 
WHERE Type_1 = 'None' OR Type_2 = 'None';

#Number of pokemon per generation
SELECT Generation, Count(Name)
FROM Pokemon 
GROUP BY Generation; 

#Pokemon with the highest ammount of stats that are not Mega pokemon
SELECT Name, Generation, Total
FROM Pokemon
WHERE Name NOT LIKE 'Mega%'
ORDER BY Total DESC; 

