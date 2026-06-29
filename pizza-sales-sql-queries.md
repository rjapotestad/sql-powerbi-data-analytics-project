A.KPI's <br>
  1.Total Revenue: <br>
    SELECT SUM(total_price) AS Total_Revenue FROM pizza_sales;<br>
    <img width="103" height="39" alt="image" src="https://github.com/user-attachments/assets/772f10d5-efbd-4617-890e-ed4cad6f187e" /> <br>
  2. Average Order Value: <br>
    SELECT SUM(total_price)/COUNT(DISTINCT order_id) FROM pizza_sales; <br>
    <img width="113" height="43" alt="image" src="https://github.com/user-attachments/assets/5568395b-ca78-47c1-85fa-40ac6f14fd93" /> <br>
  3. Total Pizzas Sold: <br>
    SELECT SUM(quantity) AS Total_Pizza_Sold FROM pizza_sales;<br>
    <img width="103" height="45" alt="image" src="https://github.com/user-attachments/assets/1fe63561-f371-4c15-a580-9ddbe793d060" /> <br>
  4. Total Orders Placed: <br>
    SELECT COUNT(DISTINCT order_id) AS Total_orders FROM pizza_sales; <br>
    <img width="108" height="45" alt="image" src="https://github.com/user-attachments/assets/b7ad5ee6-2df1-461b-8f37-c3137d290e3d" /> <br>
  5. Average Pizzas Per Order: <br>
    SELECT CAST(CAST(SUM(quantity) AS DECIMAL(10,2)) / <br>
    CAST(COUNT(DISTINCT order_id) AS DECIMAL(10,2)) AS DECIMAL(10,2)) AS Avg_Pizzas_Per_order FROM pizza_sales; <br>
    <img width="119" height="40" alt="image" src="https://github.com/user-attachments/assets/8f4a5c97-8d5f-47f5-8c71-9c299ad278a0" /> <br>
B. Charts <br>
  1. Daily trend for Total Orders: <br>
  SELECT DATENAME (DW, order_date) AS order_day, COUNT (DISTINCT order_id) AS Total_orders <br>
  FROM pizza_sales <br>
  GROUP BY DATENAME (DW, order_date); <br>
  <img width="132" height="119" alt="image" src="https://github.com/user-attachments/assets/0fabf5f4-86d3-4b9f-ba3b-3c2c089c0394" /> <br>
  2. Monthly trend for Total Orders: <br>
    SELECT DATENAME(MONTH, order_date) AS Month_Name, COUNT (DISTINCT order_id) AS Total_orders <br>
    FROM pizza_sales <br>
    GROUP BY DATENAME(MONTH, order_date) <br> 
    ORDER BY Total_orders DESC; <br>
    <img width="137" height="181" alt="image" src="https://github.com/user-attachments/assets/82bab78f-d6ab-47e6-89db-08739452859e" /> <br>
  3. Pecentage of Sales per Category/Size (change 'pizza_category' to 'pizza_size'): <br>
     SELECT pizza_category, SUM(total_price)*100/ (SELECT SUM(total_price) FROM pizza_sales) AS PCT<br>
FROM pizza_sales<br>
GROUP BY pizza_category;<br>
<img width="166" height="73" alt="image" src="https://github.com/user-attachments/assets/2c31ecb3-ee87-444b-a19c-7ce46f0f5bc5" /> <br>
  4.  Pecentage of Sales per Size : <br>
    SELECT pizza_size, CAST(SUM(total_price)*100/ (SELECT SUM(total_price) FROM pizza_sales) AS DECIMAL(10,2)) AS PCT_size <br>
FROM pizza_sales<br>
GROUP BY pizza_size<br>
ORDER BY PCT_size DESC;<br>
  <img width="132" height="104" alt="image" src="https://github.com/user-attachments/assets/3845e166-f621-4b77-81e1-34da4f90a9a8" /> <br>
  5. Top 5 Best Sellers by Revenue: <br>
     SELECT TOP 5 pizza_name,SUM(total_price) AS Total_Revenue FROM pizza_sales <br>
GROUP BY pizza_name <br>
ORDER BY Total_Revenue DESC; <br>
  <img width="198" height="91" alt="image" src="https://github.com/user-attachments/assets/26b27f11-bc22-4c0d-9486-c3995cc18c29" /> <br>
  6. Bottom 5 Best Sellers by Revenue : <br>
  SELECT TOP 5 pizza_name,SUM(total_price) AS Total_Revenue FROM pizza_sales <br>
GROUP BY pizza_name <br>
ORDER BY Total_Revenue ASC; <br>
  <img width="224" height="98" alt="image" src="https://github.com/user-attachments/assets/b761e90b-bd42-4ce2-99de-ab55aa02b146" /> <br>
  7. Top/Bottom 5 Best Sellers by Quantity: <br>
     SELECT TOP 5 pizza_name,SUM(quantity) AS Total_Quantity FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Quantity DESC/ASC;
  <img width="218" height="104" alt="image" src="https://github.com/user-attachments/assets/f6cac1bb-90eb-4210-bf7a-dbf9943ee40f" /> <br>
  8. Top/Bottom 5 Best Sellers by Total Orders: <br>
     SELECT TOP 5 pizza_name,COUNT(DISTINCT order_id) AS Total_Orders FROM pizza_sales <br>
GROUP BY pizza_name <br>
ORDER BY Total_Orders DESC; <br>
    <img width="201" height="103" alt="image" src="https://github.com/user-attachments/assets/a2c3d74f-103c-40cc-af25-25a85a65bc96" /> <br>



    


  


