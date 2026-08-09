SELECT name, population, area
FROM World
WHERE area >= 3000000 
   OR population >= 25000000;

--BLIND RULE FOR BIG COUNTRIES: "At least" Always use >= (greater than or equal to)
