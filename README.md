Retail Sales Analysis Using SQL
Project Overview
This project analyzes retail transaction data to identify sales trends, customer behavior, and product performance.

Business Questions
Q1: Which age group generated the highest and lowest total sales?
Q2: Which age group generates the highest sales for each product category?
Q3: Which age groups and genders generate the highest sales volume across different product categories?
Q4: Which female age group has the highest sales of Electronics?
Q5: Which age group prefers Single Item, Few Items, or Bulk Purchase?
Q6: Which product category generates the highest total sales and quantity sold?
Q7: Which month generates the highest total sales?
Q8: Which age group has the highest average transaction value?
Q9: What is the overall sales performance of the business?
Q10: Which product category has the highest average transaction value?

Tools Used
MySQL
GitHub
Power BI

Data Cleaning
Checked missing values
Checked duplicate transaction IDs
Validated quantity, price, and total amount
Verified date formats 

Key Insights
-Overall sales performance: The business generated total sales of 456,000 from 1,000 transactions.
-A total of 2,514 items were sold.
-The average transaction value was 456.00.
-Product performance: Electronics generated the highest total sales at 156,905, while Clothing recorded the highest sales volume with 894 items sold.
-Although Electronics sold fewer items than Clothing, it generated more revenue, indicating a higher value per item.
-Monthly sales trend: May recorded the highest total sales at 53,150, accounting for approximately 11.66% of overall sales. September recorded the lowest sales at 23,620.
-Customer segment performance: Male customers aged 45–54 generated the highest Beauty sales at 19,900. Male customers aged 25–34 led Clothing sales at 21,665, while male customers aged 55–64 generated the highest Electronics sales at 21,850.
-Average transaction value: Beauty had the highest average transaction value at 467.48, followed by Electronics at 458.79 and Clothing at 443.25.


Repository Structure
README.md — Project overview, key insights, and recommendations.
sql/analysis.sql — SQL queries for data validation and retail sales analysis.
data/retail_sales.csv — Retail transaction dataset.
images/query-results/ — Screenshots of SQL query results.
images/dashboard.png — Final dashboard screenshot.



