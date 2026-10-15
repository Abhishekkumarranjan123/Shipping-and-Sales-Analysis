📦 Shipping and Sales Analysis — End-to-End Data Analytics Project
Overview
This project analyzes sales performance and shipping duration to identify patterns across products, categories, regions, and shipping methods. It follows an end-to-end data analytics workflow, including data preparation in Excel and Python, SQL-based analysis in PostgreSQL, and interactive reporting in Power BI. The goal is to turn raw order data into useful insights that can support business decisions and help identify shipping-process improvements.
Dataset
- Source: Add the dataset source or Kaggle link here.
- Records: Add the final row count after cleaning.
- Columns: Includes order details, order and ship dates, shipping mode, customer/location details, product category, sub-category, product name, and sales.
- Data preparation: Created a shipping_time / total_time column from the order and ship dates. Use the exact column name present in your cleaned dataset.
- Data quality: Postal-code blanks and other missing or inconsistent values were reviewed during preparation. Document the final treatment used for each field.
Tools & Technologies
Category	Tools Used
Initial inspection and preparation	Microsoft Excel
Data cleaning and feature engineering	Python (Pandas)
Database and business querying	PostgreSQL
Interactive dashboard	Power BI
Project documentation	GitHub README


Project Workflow
1. Data Inspection and Preparation
- Inspected the dataset and reviewed its columns and data types.
- Checked date fields and missing values.
- Investigated missing postal-code values and applied the chosen treatment where appropriate.
- Created a shipping-duration column using the difference between shipping date and order date.
- Checked the cleaned data for consistency before analysis.
2. Python Analysis
- Loaded the dataset into Pandas.
- Reviewed the dataset structure and summary statistics.
- Performed the data transformations needed for analysis.
- Prepared the cleaned DataFrame for loading into PostgreSQL.
Add the exact transformations and Python notebook filename used in your project.

3. SQL Analysis (PostgreSQL)
Used PostgreSQL to investigate business questions such as:
1. What is the average shipping time by shipping mode?
2. Which orders took the longest to ship?
3. What percentage of orders took more than a chosen number of days to ship?
4. How do sales change month by month?
5. Which states generate the highest sales?
6. Which regions have the highest sales and order volume?
7. Which product categories generate the most sales?
8. Which cities have the longest average shipping time?
9. Which orders have the longest shipping durations?
10. How does average shipping time vary by category and sub-category?
The exact questions and SQL should match the queries in sql/shipping_sales_10_questions.sql. Update this list if your final query file uses different questions or column names.
4. Power BI Dashboard
Use Power BI to present the results in an interactive dashboard. Potential views include:
- KPI cards for total sales, total orders, and average shipping time.
- Sales by month, region, state, and product category.
- Shipping duration by shipping mode.
- Longest-shipping orders or locations that may need investigation.
- Slicers for date, region, category, and shipping mode, where supported by the dataset.
Only list visuals and KPIs that are included in your finished dashboard.
Results & Key Insights
Add verified findings from your SQL queries and Power BI dashboard here. For example:
- Sales performance: Identify the regions and product categories contributing the most sales.
- Shipping efficiency: Compare average shipping duration across shipping modes.
- Potential delays: Identify orders or locations with unusually long shipping times.
- Time trends: Describe any clear monthly sales patterns found in the data.
Replace these prompts with actual figures and findings from your analysis. Do not report example values as results.
Business Recommendations
- Improve shipping efficiency — Investigate shipping modes, locations, or orders with longer-than-average shipping durations.
- Strengthen regional planning — Use regional sales results to identify high-performing markets and areas that may need attention.
- Prioritize high-performing categories — Use category-level sales analysis to guide merchandising and sales planning.
- Monitor monthly sales — Review monthly patterns to support forecasting and operational planning.
- Track performance consistently — Use Power BI KPIs and filters to monitor sales and shipping metrics over time.
Repository Structure
Update this structure to match the files you upload:
Shipping-and-Sales-Analysis/
├── data/
│   └── shipping_sales_data.csv
├── excel/
│   └── data_cleaning.xlsx
├── notebooks/
│   └── shipping_sales_analysis.ipynb
├── sql/
│   └── shipping_sales_10_questions.sql
├── powerbi/
│   └── shipping_sales_dashboard.pbix
├── images/
│   └── dashboard_preview.png
└── README.md
How to Run
1. Clone the repository:git clone <your-repository-link>
2. Install the Python libraries used in your notebook. For example:pip install pandas
3. Open and run the notebook in notebooks/ to reproduce the data preparation and analysis.
4. Load the cleaned dataset into PostgreSQL and confirm that the table name and column names match the SQL file.
5. Run the queries in sql/shipping_sales_10_questions.sql.
6. Open the .pbix file in Power BI Desktop to explore the dashboard, if included.
Skills Demonstrated
Excel | Python | Pandas | PostgreSQL | SQL | Power BI | Data Cleaning | Date Transformation | Exploratory Data Analysis | Data Visualization | Business Intelligence
Author
Abhishek Kumar
- GitHub: Abhishekkumarranjan123
- LinkedIn: Abhishek Kumar
