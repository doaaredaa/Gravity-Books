# Gravity Books Project (End-to-End Project)
## Project Phases
1. **ETL (Extract, Transform, Load)** using SSIS
2. **Analysis** using SSAS
3. **Visualization** using Power BI
## Technologies Used
- SQL Server Integration Services (SSIS)
- SQL Server Analysis Services (SSAS)
- Power BI
# ETL:
Using [Mapping Sheet](https://github.com/doaaredaa/Gravity-Books/blob/d9138525f9c0ebc468b51c662516077bc30cd4cd/01.%20DWH%20Mapping/02.%20Mapping%20of%20DWH.xlsx) to extract each column from the database into the data warehouse by SSIS.

## SSIS
In this phase, data is extracted from a transactional database called "Gravity Book Sales," transformed to meet data warehousing requirements and loaded into a structured data warehouse.
**Gravity Book Database**
![01  OLTP](https://github.com/doaaredaa/Gravity-Books/assets/164890615/f2145026-793c-493d-9efc-82e75bcab03f)
**Gravity Book Database**
![03  DWH](https://github.com/doaaredaa/Gravity-Books/assets/164890615/d4b98c64-7b53-4a85-aeb1-770ca16f90dc)
## SSAS
The data is modeled and structured for efficient querying and analysis using SQL Server Analysis Services (SSAS), as:
![11 SSAS](https://github.com/doaaredaa/Gravity-Books/assets/164890615/7115ce2d-7bf7-4ff5-a4d6-60cf6c8d305b)
## Visualization Phase
Interactive reports and visualizations are created using Power BI, allowing end-users to derive insights from the data.
![Dashboard](https://github.com/doaaredaa/Gravity-Books/assets/164890615/b62e2889-a05b-4ee7-9bc6-0fea3ac5c682)

