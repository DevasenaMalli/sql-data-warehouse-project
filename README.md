# Data Warehouse and Analytics Project 

Welcome to the **Data Warehouse and Analytics Project** repository! 
This project demonstrates a comphrehensive data warehousing and analytics solutions, from building a data warehouse to generating actionable insights. Designed as a portifolio project hightlights industry best practices in data engineering and analytics.

## Project Requirments

### Objectives
Devlop a modern data warehouse using SQL Server to consolidate sales data, enabling analytical reporting and informed decision-making


####Specifications

- **Data Source**: Import data from two source systems (ERP and CRM) provided as csv files.

- **Data Quality**: Clean and resolve data quality issues prior to analysis.

- **Integration**: Combine both sources into a single, user-friendly data model designed for analytical quories.

- **Documentation**: Provide clear documentation of the data model to support both bussiness stakeholders and analytics team

----

### BI: Analytics & Reporting (Data Analytics)


###Objective
Devlop SQL- based analytics to deliver detailed insights into:

- **Customer Behavior**
- **Product perfomence**
- **Sales Trends**

These insights empower stakeholders with key bussiness metrics, enabling strategic decision-making.

---

## Problem

The source CRM and ERP data is messy:
- Duplicate customer records
- Inconsistent values (M/F, S/M)
- Missing and null values
- No proper relationship between entities

## Solution

This project cleans and transforms the data into a structured data warehouse using:
- Data cleansing (TRIM, CASE, NULL handling)
- Deduplication (ROW_NUMBER)
- Standardization of fields
- Bronze → Silver → Gold architecture

- ## Before vs After

Before:
- Duplicate records
- Inconsistent data formats
- Unstructured data

After:
- Clean, standardized dataset
- One record per entity
- Structured for reporting and analytics


## Skills Demonstrated

- SQL (T-SQL)
- Data Cleaning & Transformation
- Data Modeling
- ETL Pipeline Design
- Data Quality Handling
