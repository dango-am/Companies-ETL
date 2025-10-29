SELECT * FROM public.companies_data LIMIT 10000;

SELECT column_name, data_type 
FROM information_schema.columns
WHERE table_name = 'companies_data';

ALTER TABLE companies_data
ALTER COLUMN year_founded TYPE INT USING year_founded::INT,
ALTER COLUMN company_age TYPE INT USING company_age::INT;
ALTER TABLE companies_data ALTER company_id TYPE INTEGER;
ALTER TABLE companies_data ALTER current_employee_estimate TYPE INTEGER;
ALTER TABLE companies_data ALTER total_employee_estimate TYPE INTEGER;


ALTER TABLE companies_data ADD PRIMARY KEY (company_id);
SELECT column_name FROM information_schema.key_column_usage WHERE table_name = 'companies_data' AND constraint_name LIKE '%pkey%';

CREATE INDEX idx_year ON companies_data(year_founded);
CREATE INDEX idx_age ON companies_data(company_age);
CREATE INDEX idx_country ON companies_data(country);
CREATE INDEX idx_industry ON companies_data(industry);
CREATE INDEX idx_employee_growth ON companies_data(employee_growth_ratio);

SELECT * FROM companies_data 
WHERE year_founded BETWEEN 2010 AND 2018;

SELECT * FROM companies_data ORDER BY year_founded ASC LIMIT 10;




SELECT * FROM companies_data 
WHERE company_age > 100;

-- Find companies by size (uses idx_employees)
SELECT * FROM companies_data 
WHERE current_employee_estimate > 500;

-- Fast country analysis
SELECT * FROM companies_data WHERE country = 'brazil' LIMIT 10;

-- Fast industry searches  
SELECT * FROM companies_data WHERE industry = 'retail' LIMIT 10;

-- Fast growth company finding
SELECT * FROM companies_data WHERE employee_growth_ratio > 0.8 LIMIT 10;