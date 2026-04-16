# Humanitarian Impact Analysis (SQL)

![Visualizing Collaborative Humanitarian Support](ngo_project_image.jpg)

## 📊 Executive Overview
This project provides a data-driven evaluation of the efficiency and funding trends of *GoodThought NGO* from 2010 to 2023. By analyzing a relational database of 13 years of contributions, the goal was to identify strategic insights that optimize future resource allocation and maximize humanitarian impact.

This analysis exemplifies a practical application of data science techniques to solve real-world organizational challenges, a core competency I am developing as a *Mechanical Engineering Student* at the intersection of hardware and data.

## 💡 Key Analytical Insights
* *Funding Drivers (Categorical Analysis):* Organizations funded *60%* of the highest-value assignments. This indicates that while individual donors provide crucial volume, corporate/organizational partnerships are the primary engine for large-scale, high-budget projects.
* *Operational Efficiency (Impact Modeling):* Several "Beacon Projects" were identified that achieved maximum impact scores (*10.0/10.0*) despite receiving very low funding volumes (e.g., only 2 donations). This highlights that project management quality and community engagement can sometimes matter more than pure financial volume.

## 🛠️ Technical Implementation (The Code)

The analysis was performed using *PostgreSQL* in the DataCamp SQL Workspace. The full SQL query logic is available in the analysis_queries.sql file.

### *SQL Skills Demonstrated:*
* *Common Table Expressions (CTEs):* Used for advanced subquery organization and improved query performance.
* *Window Functions (ROW_NUMBER() with PARTITION BY):* Implemented to rank and isolate the top-performing project in each separate region.
* *Complex Joins (INNER JOIN, USING):* Correctly merged information across the Assignments, Donations, and Donors tables.
* *Aggregation:* Used SUM(), ROUND(), and COUNT() to calculate total donation values and project efficiency metrics.

## 📂 Project Deliverables
* Impact_Analysis_Report.pdf: The complete professional technical report with detailed methodology, ERD diagram, SQL code snippets, and structured recommendations.
* analysis_queries.sql: The primary code file containing all the executable SQL statements.

---
*[Analyst: Agboola Mubarak | April 2026]*
