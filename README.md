# Companies-ETL
# Company Data ETL Pipeline

## 🧩 Overview
This project demonstrates a complete **ETL (Extract, Transform, Load)** workflow using **Jupyter Notebook** and **PostgreSQL**, built on the **People Data Labs 2019 Global Company Dataset**.

We cleaned and standardized company data, engineered new features, and loaded it into a relational database with an optimized schema for analysis.

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

## ⚙️ Tech Stack
- **Python (Jupyter Notebook)**
- **Pandas / NumPy**
- **PostgreSQL**
- **SQLAlchemy / psycopg2**

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

## 🔧 ETL Process
**1. Extract** – Loaded company dataset into Jupyter.  
**2. Transform** –  
- Cleaned missing/duplicate data.
- Standadized and cleaned locality column
- Engineered `company_age` and `employee_growth_ratio`.  
- Standardized and fixed data types.  
**3. Load** 
- Connected to **PostgreSQL**.  
- Assigned `company_id` as **primary key**.  
- Adjusted schema and added **indexes** for faster queries.

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

## 🗂️ Example Data
| name | domain | year_founded | country | company_age | employee_growth_ratio |
|------|---------|---------------|----------|--------------|------------------------|
| IBM | ibm.com | 1911 | United States | 114 | 0.618 |
| TCS | tcs.com | 1968 | India | 57 | 0.441 |
| Accenture | accenture.com | 1989 | Ireland | 36 | 0.582 |

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

## 🔒 Notes
- Database credentials stored securely in a local `.env` file (not pushed to GitHub).  
- `.env.example` provided as a template.

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

## 📘 Source
Dataset: *People Data Labs — 2019 Global Company Dataset*  

