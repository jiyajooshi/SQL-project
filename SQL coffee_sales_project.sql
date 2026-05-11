SELECT*FROM coffee_shop_sales;
SELECT 
    DAYNAME(transaction_date) AS day_of_week,
    ROUND(SUM(transaction_qty * unit_price)) AS total_sales
FROM coffee_shop_sales
GROUP BY DAYOFWEEK(transaction_date), DAYNAME(transaction_date)
ORDER BY DAYOFWEEK(transaction_date);

