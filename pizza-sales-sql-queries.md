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

