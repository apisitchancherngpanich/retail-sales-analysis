-- =========================================
-- Retail Sales Data Analysis
-- =========================================

-- =========================================
-- Q1: Which age group generated the highest
--     and lowest total sales?
-- =========================================
SELECT
    `Age_Group`,
    SUM(`Total Amount`) AS AmountperAge_Group
FROM retail_sales
GROUP BY `Age_Group`
ORDER BY AmountperAge_Group DESC;

-- =========================================
-- Q2: Which age group generates the highest
--     sales for each product category?
-- =========================================
SELECT
    `Product Category`,
    `Age_Group`,
    SUM(`Total Amount`) AS TotalAmount
FROM retail_sales
GROUP BY
    `Product Category`,
    `Age_Group`
ORDER BY
    `Product Category`,
    TotalAmount DESC;

-- =========================================
-- Q3: Which age groups and genders generate
--     the highest sales volume across
--     different product categories?
-- =========================================

SELECT
    `Age_Group`,
    Gender,
    `Product Category`,
    SUM(Quantity) AS TotalSales
FROM retail_sales
GROUP BY
    `Age_Group`,
    Gender,
    `Product Category`
ORDER BY
    `Age_Group`,
    Gender,
    TotalSales DESC;

-- =========================================
-- Q4: Which female age group has the highest
--     sales of Electronics?
-- =========================================

SELECT
    Gender,
    `Age_Group`,
    `Product Category`,
    SUM(`Total Amount`) AS TotalSales
FROM retail_sales
WHERE Gender = 'Female'
    AND `Product Category` = 'Electronics'
GROUP BY
    `Age_Group`,
    `Product Category`
ORDER BY
    TotalSales DESC;

-- =========================================
-- Q5: Which age group prefers Single Item,
--     Few Items, or Bulk Purchase?
-- =========================================

SELECT
    `Age_Group`,
    `Quantity_Category`,
    COUNT(*) AS PurchaseCount
FROM retail_sales
GROUP BY
    `Age_Group`,
    `Quantity_Category`
ORDER BY
    `Quantity_Category`,
    PurchaseCount DESC;

-- =========================================
-- Q6: Which Product Category generates
--     the highest total sales and quantity sold?
-- =========================================

SELECT
    `Product Category`,
    SUM(`Quantity`) AS Quantity,
    SUM(`Total Amount`) AS TotalAmount
FROM retail_sales
GROUP BY `Product Category`
ORDER BY
    Quantity DESC,
    TotalAmount DESC;

-- =========================================
-- Q7: Which month generates the highest total sales?
-- =========================================

SELECT
    Month,
    SUM(`Total Amount`) AS TotalSales
FROM retail_sales
GROUP BY Month
ORDER BY TotalSales DESC;

-- =========================================
-- Q8: Which Age Group has the highest average transaction value?
-- =========================================

SELECT
    `Age_Group`,
    AVG(`Total Amount`) AS avgtotalsales
FROM retail_sales
GROUP BY `Age_Group`
ORDER BY avgtotalsales DESC;
