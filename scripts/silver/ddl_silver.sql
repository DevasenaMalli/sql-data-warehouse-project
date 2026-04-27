
/*
=================================================================================
DDL Scripts: Create Silver Tables

==================================================================================
Script Purpose:
    This script creates tables in Silver schema, dropping existing tables 
    if they already exist.
    Run this script to re-define the DDL structure of 'silver' tables
==================================================================================
*/


IF OBJECT_ID ('silver.crm_cust_info', 'U') IS NOT NULL
	DROP TABLE silver.crm_cust_info;
CREATE TABLE silver.crm_cust_info(

cst_id INT,
cst_key NVARCHAR(50),
cst_firstname NVARCHAR(50),
cst_lastname NVARCHAR(50),
cst_material_status NVARCHAR(50),
cst_gndr NVARCHAR(50),
cst_create_data DATE

);

IF OBJECT_ID ('silver.crm_prd_info', 'U') IS NOT NULL
	DROP TABLE silver.crm_prd_info;

CREATE TABLE silver.crm_prd_info(

prd_id INT,
prd_key NVARCHAR(50),
prd_nm NVARCHAR(50),
prd_cost INT,
prd_line NVARCHAR(50),
prd_start_date DATE,
prd_end_dt DATE

);

 IF OBJECT_ID ('silver.crm_sales_details', 'U') IS NOT NULL
	DROP TABLE silver.crm_sales_details;

CREATE TABLE silver.crm_sales_details(
sls_ord_num NVARCHAR(50),
sls_prd_key NVARCHAR(50),
sls_cuts_id INT,
sls_order_dt INT,
sls_ship_dt INT,
sls_quantity INT,
sls_price NVARCHAR(50)

);

--table for erp--

CREATE TABLE silver.erp_loc_a101 (

	cid NVARCHAR(50),
	cntry NVARCHAR(50)

);


CREATE TABLE silver.erp_cust_az12 (

	cid NVARCHAR(50),
	bdate DATE,
	gen NVARCHAR(50)

);


CREATE TABLE silver.erp_px_cat_g1v2 (

	id NVARCHAR(50),
	cat NVARCHAR(50),
	subcat NVARCHAR(50),
	maintenance NVARCHAR(50)

);
