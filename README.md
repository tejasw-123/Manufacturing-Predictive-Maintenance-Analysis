Manufacturing Predictive Maintenance Analysis
Project Overview
This project analyzes manufacturing machine data using Microsoft
Excel, SQL Server, and Power BI. It focuses on understanding machine
failures, comparing failure modes, exploring product-level failure
patterns, and examining relationships between operating conditions.

The project includes a data-check workbook, SQL analysis script, and an
interactive Power BI report.
Project Files
  File                                Purpose
  ai4i2020_Part1_Check.xlsx         Dataset workbook and data-quality
check notes

  Manufacturing_SQL_Analysis.sql    SQL Server database setup, data
exploration, data-quality checks,
and failure analysis queries
power bi.pbix                     Power BI report and dashboard
Dataset Overview
The Excel workbook contains the ai4i2020 worksheet with 10,000
records and 14 columns.

The Data_Quality_Notes worksheet records the following checks:
- 10,000 data rows and 14 columns.
- 0 blank cells found.
- 0 duplicate records found.
- Machine failure and failure-mode flags are represented as 0/1
  values.
Dataset Columns
  Column                              Description
  UDI                               Unique data-point identifier

  Product ID                        Product identifier

  Type                              Product quality/type category

  Air temperature [K]               Air temperature in Kelvin

  Process temperature [K]           Process temperature in Kelvin

  Rotational speed [rpm]            Rotational speed in revolutions per
minute

  Torque [Nm]                       Torque in Newton metres

  Tool wear [min]                   Tool wear in minutes

  Machine failure                   Machine failure indicator (0/1)

  TWF                               Tool Wear Failure flag

  HDF                               Heat Dissipation Failure flag

  PWF                               Power Failure flag

  OSF                               Overstrain Failure flag
RNF                               Random Failure flag
The Power BI model uses the Manufacturing_Cleaned table and
corresponding field names such as Product_ID, Air_temperature_K,
Process_temperature_K, Rotational_speed_rpm, Torque_Nm, and
Tool_wear_min.
SQL Analysis
The Manufacturing_SQL_Analysis.sql script includes:
1. Creating and selecting the ManufacturingDB database.
2. Counting the records in the ai4i2020 table.
3. Previewing the first 10 records.
4. Checking NULL values in key columns.
5. Checking for duplicate records across the dataset fields.
6. Grouping records by product type.
7. Calculating total records, machine failure records, and counts for
   TWF, HDF, PWF, OSF, and RNF.
8. Sorting product types by failure record count.
Power BI Report
The Power BI report contains KPI cards, charts, slicers, and a detailed
records table.
Main Dashboard KPIs
- Total Records
- Failure Flag Records
- Failure Flag Rate
- Average Tool Wear
Failure and Product Analysis
- Failure mode comparison across product types using HDF, OSF, PWF,
  RNF, and TWF measures.
- Failure status distribution using a donut chart.
- Top 10 products by failure records using a clustered bar chart.
- Detailed product failure records table.
Sensor and Operating Condition Analysis
- Air temperature versus process temperature scatter chart.
- Rotational speed versus torque scatter chart.
- Failure status is used to distinguish records in the temperature
  scatter chart.
Interactive Filters
- Product Type
- Failure Status
- Product_ID
These slicers allow users to explore the report by product category,
failure status, and individual product.
Tools and Technologies
- Microsoft Excel -- dataset review and data-quality notes.
- SQL Server -- database creation, data exploration, validation
  queries, and grouped failure analysis.
- Microsoft Power BI Desktop -- data modeling, DAX measures,
  interactive visuals, and dashboard development.
- DAX -- calculations for record counts, failure indicators,
  failure rate, and average tool wear.
How to Use
1. Open ai4i2020_Part1_Check.xlsx to review the dataset and
   data-quality notes.
2. Open Manufacturing_SQL_Analysis.sql in SQL Server Management
   Studio.
3. Ensure the ai4i2020 table is available in the ManufacturingDB
   database before running the analysis queries.
4. Open power bi.pbix in Power BI Desktop.
5. Use the slicers to filter by Type, Failure Status, and Product_ID.
6. Review the KPI cards, charts, and detailed table to explore the
   manufacturing data.
Scope and Limitations
- This project focuses on data validation, descriptive analysis, and
  interactive visualization.
- The SQL script contains checks for NULL values in selected key
  columns and duplicate records across the listed dataset fields.
- The workbook's data-quality notes report zero blank cells and zero
  duplicates for the checked workbook.
- Failure-mode flags can overlap on the same record. Their totals
  should not automatically be interpreted as unique machine failure
  records.
- The current report does not implement a trained machine-learning
  model or calculate remaining useful life (RUL), downtime,
  maintenance cost, or time-to-failure.
- Scatter charts help explore relationships between sensor
  measurements; they do not establish causation.
Project Goal
To turn manufacturing machine data into understandable insights that
support exploration of machine failures, failure modes, product-level
patterns, and operating conditions.
