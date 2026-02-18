# Brazilian E-Commerce Data Analysis & Customer Segmentation (RFM Analysis)

## 📌Executive Summary
This project aims to analyse operational performance and customer behaviour in the Olist E-Commerce (Brazil) dataset for the period 2016-2018. Through data exploration of more than 100,000 orders, this analysis identifies revenue growth trends, delivery effectiveness, and customer segmentation using the RFM (Recency, Frequency, Monetary) method to drive more targeted marketing strategies.

## Business Problem
Management requires a deep understanding of:

1. Business Growth: How have revenue and order volume trends changed over time?

2. Geography: Which regions contribute the most revenue?

3. Customer Retention: Who are our loyal customers, and who is at risk of churning?

4. Service Quality: How does delivery performance affect order status?

## Methodology
This project was carried out in the following stages:

Data Wrangling: Cleaning duplicate data, handling missing values, and ensuring data types (especially timestamps and prices) are consistent in BigQuery.

Exploratory Data Analysis (EDA): Analyzing price distributions, the most popular product categories, and customer distribution across states in Brazil.

RFM Analysis: * Recency: Calculating the number of days since the last transaction.

Frequency: Calculating the number of transactions per customer.

Monetary: Calculating the total purchase value per customer.

Data Visualization: Building an interactive dashboard to monitor key KPIs (GMV, Order Count, and Customer Segmentation).

## 🛠️ Skills Demonstrated
SQL (BigQuery): Advanced JOINs (USING clause), Window Functions, Common Table Expressions (CTEs), & Date Formatting.

Analytical Thinking: RFM Segmentation, Time-series analysis, & Business Recommendation.

## 🚀 Result & Business Recommendation
### 1. Product Ranking & Running Total
Goal: Identify top-selling products in each category and track the accumulation of revenue over time.
Technique: Used DENSE_RANK() to handle price ties and SUM() OVER() for a running total.
Logic: Partitioned by product category to ensure the ranking resets for every group.

### 2. Customer Retention Analysis
Goal: Calculate how many days have passed since a customer's first purchase.
Technique: Used FIRST_VALUE() to lock the initial transaction date and TIMESTAMP_DIFF() to measure loyalty.

