# Fetch Data Analysis

## Overview  
This repository contains the data analysis and SQL queries performed as part of the Fetch Rewards Data Analysis. The assessment focuses on exploring transaction, product, and user datasets, identifying data quality issues, and deriving insights to inform business decisions.

## Contents  
- `Products.ipynb` – Analysis of the product dataset, including missing values, brand distribution, and barcode inconsistencies.  
- `Users_CleanData.ipynb` – Cleaning and analysis of the user dataset, including missing demographics and user-to-transaction mapping issues.  
- `Transaction.ipynb` – Exploration of transaction data, handling duplicates, and aligning barcodes with product data.  
- `SQL.ipynb` – SQL queries to answer key business questions regarding user behavior, brand performance, and transaction trends.  
- `Email_to_Stakeholders.pdf` – An email/message with a summary of key data quality issues, trends, and recommendations.
- **`Updated_Datasets/`** – Folder containing the cleaned datasets after processing: (Attaching a Google Drive link if the Datasets are inaccessible here.)
  {https://drive.google.com/drive/folders/1SQFg3zr51bUZrKlM0pnpPokEpj4HhZyV?usp=sharing} 
  - `USER_CLEANED.csv`  
  - `TRANSACTION_CLEANED.csv`  
  - `PRODUCTS_CLEANED.csv`
- `SQL_Outputs` – Folder containing the output CSV files for SQL query results
- `SQL_Queries` – Folder containing the SQL queries executed to answer key business questions.  


## Data Quality Issues Identified  
- **User to Transaction Mapping Inadequacy** – Only **0.51%** of transaction user IDs exist in the user dataset, limiting customer behavior analysis.  
- **Barcode Format Inconsistencies** – Barcodes range from **7 to 14 digits**, affecting accurate product mapping.  
- **Duplicate Transactions Due to Missing/Zero Values** – Some transactions appear **duplicated** due to empty or zero `FINAL_SALE` and `FINAL_QUANTITY` fields.  
- **High Volume of Unknown Brands** – Many products have **missing brand or manufacturer information**, impacting brand performance insights.  
- **Misalignment Between Product and Transaction Barcodes** – **41% of transaction barcodes** do not match product barcodes, affecting sales tracking.  
- **Timestamp Gaps & Unrealistic Dates** – **46 transactions** have purchase dates recorded **after scan dates**.

## Key Insights  
- Fetch Rewards experienced **rapid year-over-year user growth**, with a peak in **2017-2020**, but saw **declines in 2023 and 2024**.  
