# olist-ecommerce-sql-analysis
Advanced SQL analysis using BigQuery on Brazilian E-Commerce dataset

## 📌 Project Overview
This project demonstrates my ability to handle complex data relationships and perform advanced analytical queries using Google BigQuery. Using the Brazilian E-Commerce (Olist) dataset, I focused on integrating multiple tables and applying Window Functions to extract meaningful business insights.

## 🛠️ Skills Demonstrated
Data Integration: Joining multiple relational tables (Orders, Order_Items, and Products).

Advanced SQL: Implementing Window Functions like DENSE_RANK() and SUM() OVER().

Query Optimization: Managing large-scale data using WHERE filtering and CTE (Common Table Expressions) to prevent resource exhaustion.

Time-Series Analysis: Handling TIMESTAMP data and calculating time-based metrics.

## 🚀 Key Queries & Insights
### 1. Product Ranking & Running Total
Goal: Identify top-selling products in each category and track the accumulation of revenue over time.

Technique: Used DENSE_RANK() to handle price ties and SUM() OVER() for a running total.

Logic: Partitioned by product category to ensure the ranking resets for every group.

### 2. Customer Retention Analysis
Goal: Calculate how many days have passed since a customer's first purchase.

Technique: Used FIRST_VALUE() to lock the initial transaction date and TIMESTAMP_DIFF() to measure loyalty.

## 📈 Challenges & Solutions
Resource Management: Initially encountered Resources exceeded errors due to the massive size of the dataset.

Solution: Optimized the query by applying DATE filters and using CTEs to make the code more readable and memory-efficient.

## 📂 How to Use
Clone this repository.

The .sql files contain queries designed for Google BigQuery syntax.

Datasets used are publicly available via Kaggle (Olist Brazilian E-Commerce).
