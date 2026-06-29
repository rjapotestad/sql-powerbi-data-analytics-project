SELECT pizza_size, CAST(SUM(total_price)*100/ (SELECT SUM(total_price) FROM pizza_sales) AS DECIMAL(10,2)) AS PCT_size
FROM pizza_sales
GROUP BY pizza_size
ORDER BY PCT_size DESC;
