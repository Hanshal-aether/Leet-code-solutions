-- Problem 1251: Average Selling Price
-- Status: AI-Assisted Concept Analysis & Optimization

SELECT 
    p.product_id, 
    IFNULL(ROUND(SUM(u.units * p.price) / SUM(u.units), 2), 0) AS average_price
FROM Prices p
LEFT JOIN UnitsSold u ON p.product_id = u.product_id 
                     AND u.purchase_date BETWEEN p.start_date AND p.end_date
GROUP BY p.product_id;

--The biggest trick here is keeping products that sold 0 units. 
--If you use a regular join, they get deleted from the results. You have to use a LEFT JOIN starting from the Prices table so every single product stays visible.
--Since prices change over time, you can't just match product IDs. 
--You have to match them using a date range check by writing purchase_date BETWEEN start_date AND end_date so each sale gets paired with the right historical price.
--For the math, the average price is calculated as Total Money Made divided by Total Units Sold. You write this out as SUM(units * price) / SUM(units).
--When a product has zero sales, the database tries to divide by a blank NULL value, which breaks the output. 
--To fix this, you wrap the entire calculation inside IFNULL(..., 0) so it cleanly displays a 0 instead of a blank.Lastly, you wrap that inside ROUND(..., 2) because the problem specifically requires the final answers to have exactly two decimal places.
