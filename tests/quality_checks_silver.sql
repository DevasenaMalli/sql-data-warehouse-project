/*
==================================================================

Quality Checks

==================================================================

Script Purpose:
  This script performs various quality checks for data consistency, 
  accuracy,and standardization across 'silver' schemas. It include checks for:

  -- NULL or Duplicate primary keys.
  -- Unwanted spaces in string dields.
  -- Data Standardization and consistency.
  -- Invalid data range and orders.
  -- Data consistency between related fields.

Usage Notes:
   - Run these checks after data loading silver layer.
   - Investigate and resolve any discrepanies found during the checks.
==============================================================================
*/


--==============================================
--Checking 'silver.crm_cust_info'
--================================================
--checking for NULLs or Duplicates in primary keys
--Expectaion: NO result

SELECT cst_id,
  COUNT(*)
  FROM silver.crm_cust_info
  GROUP BY cst_id
  HAVING COUNT(*) > 1 OR cst_id IS NULL;

--Checking for unwanted spaces
--Expectation : No result
SELECT 
  cst_key
FROM silver.crm_cust_info
WHERE cst_key != TRIM(cst_key);


---Data Standarization & Consistency
SELECT DINSTINCT 
  gen
FROM silver.erp_cust_az12;

--==============================================
--Checking 'silver.erp_loc_a101'
--================================================
---Data Standarization & Consistency

SELECT DINSTINCT 
  cntry
FROM silver.erp_loc_a101
  ORDER BY cntry;


--==============================================
--Checking 'silver.erp_px_cat_g1v2'
--================================================
--Checking for unwanted spaces
--Expectation : No result
SELECT * 
From silver.erp_px_cat_g1v2
WHERE cat != TRIM(cat)
OR subcat != TRIM(subcat)
OR maintanance != TRIM(maintanance)

---Data Standarization & Consistency
SELECT DISTINCT
  maintanance
From silver.erp_px_cat_g1v2












