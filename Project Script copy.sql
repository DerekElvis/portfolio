USE Individual_Project; 

/* This is my final project*/

DROP TABLE IF EXISTS Company; 
CREATE TABLE Company (
	Ticker CHAR(4), 
    Name VARCHAR(50), 
    Fiscal_Year_End INT, 
    Morningstar_Size VARCHAR(15),
    Morningstar_Style VARCHAR(15), 
    Sector VARCHAR(50), 
    Industry VARCHAR(50), 
    PRIMARY KEY (Ticker, Name)
); 

INSERT INTO Company
SELECT * FROM company_src; 

DROP TABLE IF EXISTS Income;
CREATE TABLE Income (
	Ticker CHAR(4), 
    Year INT, 
    Revenue BIGINT, 
    Operating_Income BIGINT, 
    Net_Income BIGINT, 
    Basic_EPS DEC(5,2),
    Diluted_EPS DEC(5,2), 
    Basic_WASO BIGINT UNSIGNED, 
    Diluted_WASO BIGINT UNSIGNED, 
    PRIMARY KEY (Ticker, Year),
    FOREIGN KEY (Ticker) References Company(Ticker)
); 



DROP TABLE IF EXISTS Stock; 
CREATE TABLE Stock (
	Ticker CHAR(4), 
    Date DATE, 
    Close DEC(5,2), 
    Volume BIGINT UNSIGNED, 
    Open DEC(5,2), 
    High DEC(5,2),
    Low DEC(5,2),
    PRIMARY KEY (Ticker, Date),
    FOREIGN KEY (Ticker) REFERENCES Company(Ticker)
); 

/*INSERT INTO Stock
SELECT * FROM y;*/ 


SELECT * FROM amzn_income; 

INSERT INTO Income
SELECT 'AMZN', 2013, MAX(IF(Income_Category = 'Revenue', `2013`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2013`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2013`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2013`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2013`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2013`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2013`, NULL)) AS Diluted_WASO
FROM amzn_Income; 

INSERT INTO Income
SELECT 'AMZN', 2014, MAX(IF(Income_Category = 'Revenue', `2014`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2014`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2014`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2014`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2014`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2014`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2014`, NULL)) AS Diluted_WASO
FROM amzn_Income; 

INSERT INTO Income
SELECT 'AMZN', 2015, MAX(IF(Income_Category = 'Revenue', `2015`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2015`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2015`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2015`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2015`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2015`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2015`, NULL)) AS Diluted_WASO
FROM amzn_Income; 

INSERT INTO Income
SELECT 'AMZN', 2016, MAX(IF(Income_Category = 'Revenue', `2016`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2016`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2016`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2016`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2016`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2016`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2016`, NULL)) AS Diluted_WASO
FROM amzn_Income; 

INSERT INTO Income
SELECT 'AMZN', 2017, MAX(IF(Income_Category = 'Revenue', `2017`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2017`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2017`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2017`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2017`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2017`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2017`, NULL)) AS Diluted_WASO
FROM amzn_Income; 

INSERT INTO Income
SELECT 'AMZN', 2018, MAX(IF(Income_Category = 'Revenue', `2018`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2018`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2018`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2018`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2018`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2018`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2018`, NULL)) AS Diluted_WASO
FROM amzn_Income; 

INSERT INTO Income
SELECT 'AMZN', 2019, MAX(IF(Income_Category = 'Revenue', `2019`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2019`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2019`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2019`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2019`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2019`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2019`, NULL)) AS Diluted_WASO
FROM amzn_Income; 

INSERT INTO Income
SELECT 'AMZN', 2020, MAX(IF(Income_Category = 'Revenue', `2020`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2020`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2020`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2020`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2020`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2020`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2020`, NULL)) AS Diluted_WASO
FROM amzn_Income;

INSERT INTO Income
SELECT 'AMZN', 2021, MAX(IF(Income_Category = 'Revenue', `2021`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2021`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2021`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2021`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2021`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2021`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2021`, NULL)) AS Diluted_WASO
FROM amzn_Income; 

INSERT INTO Income
SELECT 'AMZN', 2022, MAX(IF(Income_Category = 'Revenue', `2022`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2022`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2022`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2022`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2022`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2022`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2022`, NULL)) AS Diluted_WASO
FROM amzn_Income; 

/*APPL*/

INSERT INTO Income
SELECT 'APPL', 2014, MAX(IF(Income_Category = 'Revenue', `2014`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2014`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2014`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2014`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2014`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2014`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2014`, NULL)) AS Diluted_WASO
FROM appl_Income; 

INSERT INTO Income
SELECT 'APPL', 2015, MAX(IF(Income_Category = 'Revenue', `2015`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2015`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2015`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2015`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2015`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2015`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2015`, NULL)) AS Diluted_WASO
FROM appl_Income; 

INSERT INTO Income
SELECT 'APPL', 2016, MAX(IF(Income_Category = 'Revenue', `2016`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2016`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2016`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2016`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2016`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2016`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2016`, NULL)) AS Diluted_WASO
FROM appl_Income; 

INSERT INTO Income
SELECT 'APPL', 2017, MAX(IF(Income_Category = 'Revenue', `2017`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2017`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2017`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2017`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2017`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2017`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2017`, NULL)) AS Diluted_WASO
FROM appl_Income; 

INSERT INTO Income
SELECT 'APPL', 2018, MAX(IF(Income_Category = 'Revenue', `2018`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2018`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2018`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2018`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2018`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2018`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2018`, NULL)) AS Diluted_WASO
FROM appl_Income; 

INSERT INTO Income
SELECT 'APPL', 2019, MAX(IF(Income_Category = 'Revenue', `2019`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2019`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2019`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2019`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2019`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2019`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2019`, NULL)) AS Diluted_WASO
FROM appl_Income; 

INSERT INTO Income
SELECT 'APPL', 2020, MAX(IF(Income_Category = 'Revenue', `2020`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2020`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2020`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2020`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2020`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2020`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2020`, NULL)) AS Diluted_WASO
FROM appl_Income;

INSERT INTO Income
SELECT 'APPL', 2021, MAX(IF(Income_Category = 'Revenue', `2021`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2021`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2021`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2021`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2021`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2021`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2021`, NULL)) AS Diluted_WASO
FROM appl_Income; 

INSERT INTO Income
SELECT 'APPL', 2022, MAX(IF(Income_Category = 'Revenue', `2022`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2022`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2022`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2022`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2022`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2022`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2022`, NULL)) AS Diluted_WASO
FROM appl_Income; 

INSERT INTO Income
SELECT 'APPL', 2023, MAX(IF(Income_Category = 'Revenue', `2023`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2023`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2023`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2023`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2023`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2023`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2023`, NULL)) AS Diluted_WASO
FROM appl_Income; 

/*CSCO*/ 

INSERT INTO Income
SELECT 'CSCO', 2014, MAX(IF(Income_Category = 'Revenue', `2014`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2014`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2014`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2014`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2014`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2014`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2014`, NULL)) AS Diluted_WASO
FROM csco_Income; 

INSERT INTO Income
SELECT 'CSCO', 2015, MAX(IF(Income_Category = 'Revenue', `2015`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2015`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2015`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2015`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2015`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2015`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2015`, NULL)) AS Diluted_WASO
FROM csco_Income; 

INSERT INTO Income
SELECT 'CSCO', 2016, MAX(IF(Income_Category = 'Revenue', `2016`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2016`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2016`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2016`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2016`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2016`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2016`, NULL)) AS Diluted_WASO
FROM csco_Income; 

INSERT INTO Income
SELECT 'CSCO', 2017, MAX(IF(Income_Category = 'Revenue', `2017`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2017`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2017`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2017`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2017`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2017`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2017`, NULL)) AS Diluted_WASO
FROM csco_Income; 

INSERT INTO Income
SELECT 'CSCO', 2018, MAX(IF(Income_Category = 'Revenue', `2018`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2018`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2018`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2018`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2018`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2018`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2018`, NULL)) AS Diluted_WASO
FROM csco_Income; 

INSERT INTO Income
SELECT 'CSCO', 2019, MAX(IF(Income_Category = 'Revenue', `2019`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2019`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2019`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2019`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2019`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2019`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2019`, NULL)) AS Diluted_WASO
FROM csco_Income; 

INSERT INTO Income
SELECT 'CSCO', 2020, MAX(IF(Income_Category = 'Revenue', `2020`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2020`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2020`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2020`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2020`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2020`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2020`, NULL)) AS Diluted_WASO
FROM csco_Income;

INSERT INTO Income
SELECT 'CSCO', 2021, MAX(IF(Income_Category = 'Revenue', `2021`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2021`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2021`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2021`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2021`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2021`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2021`, NULL)) AS Diluted_WASO
FROM csco_Income; 

INSERT INTO Income
SELECT 'CSCO', 2022, MAX(IF(Income_Category = 'Revenue', `2022`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2022`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2022`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2022`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2022`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2022`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2022`, NULL)) AS Diluted_WASO
FROM csco_Income; 

INSERT INTO Income
SELECT 'CSCO', 2023, MAX(IF(Income_Category = 'Revenue', `2023`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2023`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2023`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2023`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2023`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2023`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2023`, NULL)) AS Diluted_WASO
FROM csco_Income; 

/* META */ 

INSERT INTO Income
SELECT 'META', 2013, MAX(IF(Income_Category = 'Total_Revenue', `2013`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2013`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2013`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2013`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2013`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2013`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2013`, NULL)) AS Diluted_WASO
FROM meta_Income; 

INSERT INTO Income
SELECT 'META', 2014, MAX(IF(Income_Category = 'Total_Revenue', `2014`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2014`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2014`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2014`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2014`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2014`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2014`, NULL)) AS Diluted_WASO
FROM meta_Income; 

INSERT INTO Income
SELECT 'META', 2015, MAX(IF(Income_Category = 'Total_Revenue', `2015`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2015`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2015`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2015`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2015`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2015`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2015`, NULL)) AS Diluted_WASO
FROM meta_Income; 

INSERT INTO Income
SELECT 'META', 2016, MAX(IF(Income_Category = 'Total_Revenue', `2016`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2016`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2016`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2016`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2016`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2016`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2016`, NULL)) AS Diluted_WASO
FROM meta_Income; 

INSERT INTO Income
SELECT 'META', 2017, MAX(IF(Income_Category = 'Total_Revenue', `2017`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2017`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2017`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2017`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2017`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2017`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2017`, NULL)) AS Diluted_WASO
FROM meta_Income; 

INSERT INTO Income
SELECT 'META', 2018, MAX(IF(Income_Category = 'Total_Revenue', `2018`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2018`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2018`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2018`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2018`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2018`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2018`, NULL)) AS Diluted_WASO
FROM meta_Income; 

INSERT INTO Income
SELECT 'META', 2019, MAX(IF(Income_Category = 'Total_Revenue', `2019`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2019`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2019`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2019`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2019`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2019`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2019`, NULL)) AS Diluted_WASO
FROM meta_Income; 

INSERT INTO Income
SELECT 'META', 2020, MAX(IF(Income_Category = 'Total_Revenue', `2020`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2020`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2020`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2020`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2020`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2020`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2020`, NULL)) AS Diluted_WASO
FROM meta_Income;

INSERT INTO Income
SELECT 'META', 2021, MAX(IF(Income_Category = 'Total_Revenue', `2021`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2021`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2021`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2021`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2021`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2021`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2021`, NULL)) AS Diluted_WASO
FROM meta_Income; 

INSERT INTO Income
SELECT 'META', 2022, MAX(IF(Income_Category = 'Total_Revenue', `2022`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2022`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2022`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2022`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2022`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2022`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2022`, NULL)) AS Diluted_WASO
FROM meta_Income; 

/*MFST*/ 

INSERT INTO Income
SELECT 'MFST', 2014, MAX(IF(Income_Category = 'Revenue', `2014`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2014`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2014`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2014`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2014`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2014`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2014`, NULL)) AS Diluted_WASO
FROM mfst_Income; 

INSERT INTO Income
SELECT 'MFST', 2015, MAX(IF(Income_Category = 'Revenue', `2015`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2015`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2015`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2015`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2015`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2015`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2015`, NULL)) AS Diluted_WASO
FROM mfst_Income; 

INSERT INTO Income
SELECT 'MFST', 2016, MAX(IF(Income_Category = 'Revenue', `2016`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2016`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2016`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2016`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2016`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2016`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2016`, NULL)) AS Diluted_WASO
FROM mfst_Income; 

INSERT INTO Income
SELECT 'MFST', 2017, MAX(IF(Income_Category = 'Revenue', `2017`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2017`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2017`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2017`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2017`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2017`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2017`, NULL)) AS Diluted_WASO
FROM mfst_Income; 

INSERT INTO Income
SELECT 'MFST', 2018, MAX(IF(Income_Category = 'Revenue', `2018`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2018`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2018`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2018`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2018`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2018`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2018`, NULL)) AS Diluted_WASO
FROM mfst_Income; 

INSERT INTO Income
SELECT 'MFST', 2019, MAX(IF(Income_Category = 'Revenue', `2019`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2019`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2019`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2019`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2019`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2019`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2019`, NULL)) AS Diluted_WASO
FROM mfst_Income; 

INSERT INTO Income
SELECT 'MFST', 2020, MAX(IF(Income_Category = 'Revenue', `2020`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2020`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2020`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2020`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2020`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2020`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2020`, NULL)) AS Diluted_WASO
FROM mfst_Income;

INSERT INTO Income
SELECT 'MFST', 2021, MAX(IF(Income_Category = 'Revenue', `2021`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2021`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2021`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2021`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2021`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2021`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2021`, NULL)) AS Diluted_WASO
FROM mfst_Income; 

INSERT INTO Income
SELECT 'MFST', 2022, MAX(IF(Income_Category = 'Revenue', `2022`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2022`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2022`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2022`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2022`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2022`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2022`, NULL)) AS Diluted_WASO
FROM mfst_Income; 

INSERT INTO Income
SELECT 'MFST', 2023, MAX(IF(Income_Category = 'Revenue', `2023`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2023`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2023`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2023`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2023`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2023`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2023`, NULL)) AS Diluted_WASO
FROM mfst_Income; 

/*NFLX*/ 

INSERT INTO Income
SELECT 'NFLX', 2013, MAX(IF(Income_Category = 'Revenue', `2013`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2013`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2013`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2013`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2013`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2013`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2013`, NULL)) AS Diluted_WASO
FROM nflx_Income; 

INSERT INTO Income
SELECT 'NFLX', 2014, MAX(IF(Income_Category = 'Revenue', `2014`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2014`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2014`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2014`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2014`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2014`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2014`, NULL)) AS Diluted_WASO
FROM nflx_Income; 

INSERT INTO Income
SELECT 'NFLX', 2015, MAX(IF(Income_Category = 'Revenue', `2015`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2015`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2015`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2015`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2015`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2015`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2015`, NULL)) AS Diluted_WASO
FROM nflx_Income; 

INSERT INTO Income
SELECT 'NFLX', 2016, MAX(IF(Income_Category = 'Revenue', `2016`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2016`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2016`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2016`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2016`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2016`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2016`, NULL)) AS Diluted_WASO
FROM nflx_Income; 

INSERT INTO Income
SELECT 'NFLX', 2017, MAX(IF(Income_Category = 'Revenue', `2017`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2017`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2017`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2017`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2017`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2017`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2017`, NULL)) AS Diluted_WASO
FROM nflx_Income; 

INSERT INTO Income
SELECT 'NFLX', 2018, MAX(IF(Income_Category = 'Revenue', `2018`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2018`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2018`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2018`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2018`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2018`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2018`, NULL)) AS Diluted_WASO
FROM nflx_Income; 

INSERT INTO Income
SELECT 'NFLX', 2019, MAX(IF(Income_Category = 'Revenue', `2019`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2019`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2019`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2019`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2019`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2019`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2019`, NULL)) AS Diluted_WASO
FROM nflx_Income; 

INSERT INTO Income
SELECT 'NFLX', 2020, MAX(IF(Income_Category = 'Revenue', `2020`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2020`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2020`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2020`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2020`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2020`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2020`, NULL)) AS Diluted_WASO
FROM nflx_Income;

INSERT INTO Income
SELECT 'NFLX', 2021, MAX(IF(Income_Category = 'Revenue', `2021`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2021`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2021`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2021`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2021`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2021`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2021`, NULL)) AS Diluted_WASO
FROM nflx_Income; 

INSERT INTO Income
SELECT 'NFLX', 2022, MAX(IF(Income_Category = 'Revenue', `2022`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2022`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2022`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2022`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2022`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2022`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2022`, NULL)) AS Diluted_WASO
FROM nflx_Income; 

/*QCOM*/ 

INSERT INTO Income
SELECT 'QCOM', 2014, MAX(IF(Income_Category = 'Total_Revenue', `2014`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2014`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2014`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2014`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2014`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2014`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2014`, NULL)) AS Diluted_WASO
FROM qcom_Income; 

INSERT INTO Income
SELECT 'QCOM', 2015, MAX(IF(Income_Category = 'Total_Revenue', `2015`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2015`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2015`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2015`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2015`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2015`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2015`, NULL)) AS Diluted_WASO
FROM qcom_Income; 

INSERT INTO Income
SELECT 'QCOM', 2016, MAX(IF(Income_Category = 'Total_Revenue', `2016`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2016`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2016`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2016`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2016`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2016`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2016`, NULL)) AS Diluted_WASO
FROM qcom_Income; 

INSERT INTO Income
SELECT 'QCOM', 2017, MAX(IF(Income_Category = 'Total_Revenue', `2017`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2017`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2017`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2017`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2017`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2017`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2017`, NULL)) AS Diluted_WASO
FROM qcom_Income; 

INSERT INTO Income
SELECT 'QCOM', 2018, MAX(IF(Income_Category = 'Total_Revenue', `2018`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2018`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2018`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2018`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2018`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2018`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2018`, NULL)) AS Diluted_WASO
FROM qcom_Income; 

INSERT INTO Income
SELECT 'QCOM', 2019, MAX(IF(Income_Category = 'Total_Revenue', `2019`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2019`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2019`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2019`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2019`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2019`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2019`, NULL)) AS Diluted_WASO
FROM qcom_Income; 

INSERT INTO Income
SELECT 'QCOM', 2020, MAX(IF(Income_Category = 'Total_Revenue', `2020`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2020`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2020`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2020`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2020`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2020`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2020`, NULL)) AS Diluted_WASO
FROM qcom_Income;

INSERT INTO Income
SELECT 'QCOM', 2021, MAX(IF(Income_Category = 'Total_Revenue', `2021`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2021`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2021`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2021`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2021`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2021`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2021`, NULL)) AS Diluted_WASO
FROM qcom_Income; 

INSERT INTO Income
SELECT 'QCOM', 2022, MAX(IF(Income_Category = 'Total_Revenue', `2022`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2022`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2022`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2022`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2022`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2022`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2022`, NULL)) AS Diluted_WASO
FROM qcom_Income; 

INSERT INTO Income
SELECT 'QCOM', 2023, MAX(IF(Income_Category = 'Total_Revenue', `2023`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2023`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2023`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2023`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2023`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2023`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2023`, NULL)) AS Diluted_WASO
FROM qcom_Income; 

/*SBUX*/

INSERT INTO Income
SELECT 'SBUX', 2013, MAX(IF(Income_Category = 'Revenue', `2013`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2013`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2013`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2013`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2013`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2013`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2013`, NULL)) AS Diluted_WASO
FROM sbux_Income; 

INSERT INTO Income
SELECT 'SBUX', 2014, MAX(IF(Income_Category = 'Revenue', `2014`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2014`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2014`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2014`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2014`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2014`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2014`, NULL)) AS Diluted_WASO
FROM sbux_Income; 

INSERT INTO Income
SELECT 'SBUX', 2015, MAX(IF(Income_Category = 'Revenue', `2015`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2015`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2015`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2015`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2015`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2015`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2015`, NULL)) AS Diluted_WASO
FROM sbux_Income; 

INSERT INTO Income
SELECT 'SBUX', 2016, MAX(IF(Income_Category = 'Revenue', `2016`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2016`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2016`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2016`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2016`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2016`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2016`, NULL)) AS Diluted_WASO
FROM sbux_Income; 

INSERT INTO Income
SELECT 'SBUX', 2017, MAX(IF(Income_Category = 'Revenue', `2017`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2017`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2017`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2017`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2017`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2017`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2017`, NULL)) AS Diluted_WASO
FROM sbux_Income; 

INSERT INTO Income
SELECT 'SBUX', 2018, MAX(IF(Income_Category = 'Revenue', `2018`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2018`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2018`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2018`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2018`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2018`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2018`, NULL)) AS Diluted_WASO
FROM sbux_Income; 

INSERT INTO Income
SELECT 'SBUX', 2019, MAX(IF(Income_Category = 'Revenue', `2019`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2019`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2019`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2019`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2019`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2019`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2019`, NULL)) AS Diluted_WASO
FROM sbux_Income; 

INSERT INTO Income
SELECT 'SBUX', 2020, MAX(IF(Income_Category = 'Revenue', `2020`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2020`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2020`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2020`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2020`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2020`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2020`, NULL)) AS Diluted_WASO
FROM sbux_Income;

INSERT INTO Income
SELECT 'SBUX', 2021, MAX(IF(Income_Category = 'Revenue', `2021`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2021`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2021`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2021`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2021`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2021`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2021`, NULL)) AS Diluted_WASO
FROM sbux_Income; 

INSERT INTO Income
SELECT 'SBUX', 2022, MAX(IF(Income_Category = 'Revenue', `2022`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2022`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2022`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2022`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2022`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2022`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2022`, NULL)) AS Diluted_WASO
FROM sbux_Income; 

/*TSLA*/ 


INSERT INTO Income
SELECT 'TSLA', 2013, MAX(IF(Income_Category = 'Total_Revenue', `2013`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2013`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2013`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2013`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2013`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2013`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2013`, NULL)) AS Diluted_WASO
FROM tsla_Income; 

INSERT INTO Income
SELECT 'TSLA', 2014, MAX(IF(Income_Category = 'Total_Revenue', `2014`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2014`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2014`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2014`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2014`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2014`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2014`, NULL)) AS Diluted_WASO
FROM tsla_Income; 

INSERT INTO Income
SELECT 'TSLA', 2015, MAX(IF(Income_Category = 'Total_Revenue', `2015`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2015`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2015`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2015`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2015`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2015`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2015`, NULL)) AS Diluted_WASO
FROM tsla_Income; 

INSERT INTO Income
SELECT 'TSLA', 2016, MAX(IF(Income_Category = 'Total_Revenue', `2016`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2016`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2016`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2016`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2016`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2016`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2016`, NULL)) AS Diluted_WASO
FROM tsla_Income; 

INSERT INTO Income
SELECT 'TSLA', 2017, MAX(IF(Income_Category = 'Total_Revenue', `2017`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2017`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2017`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2017`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2017`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2017`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2017`, NULL)) AS Diluted_WASO
FROM tsla_Income; 

INSERT INTO Income
SELECT 'TSLA', 2018, MAX(IF(Income_Category = 'Total_Revenue', `2018`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2018`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2018`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2018`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2018`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2018`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2018`, NULL)) AS Diluted_WASO
FROM tsla_Income; 

INSERT INTO Income
SELECT 'TSLA', 2019, MAX(IF(Income_Category = 'Total_Revenue', `2019`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2019`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2019`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2019`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2019`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2019`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2019`, NULL)) AS Diluted_WASO
FROM tsla_Income; 

INSERT INTO Income
SELECT 'TSLA', 2020, MAX(IF(Income_Category = 'Total_Revenue', `2020`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2020`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2020`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2020`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2020`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2020`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2020`, NULL)) AS Diluted_WASO
FROM tsla_Income;

INSERT INTO Income
SELECT 'TSLA', 2021, MAX(IF(Income_Category = 'Total_Revenue', `2021`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2021`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2021`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2021`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2021`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2021`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2021`, NULL)) AS Diluted_WASO
FROM tsla_Income; 

INSERT INTO Income
SELECT 'TSLA', 2022, MAX(IF(Income_Category = 'Total_Revenue', `2022`, NULL)) AS Revenue, MAX(IF(Income_Category = 'Operating_Income', `2022`, NULL)) AS Operating_Income, MAX(IF(Income_Category = 'Net_Income', `2022`, NULL)) AS Net_Income,
MAX(IF(Income_Category = 'Basic_EPS', `2022`, NULL)) AS Basic_EPS, MAX(IF(Income_Category = 'Diluted_EPS', `2022`, NULL)) AS Diluted_EPS, MAX(IF(Income_Category = 'Basic_WASO', `2022`, NULL)) AS Basic_WASO, 
MAX(IF(Income_Category = 'Diluted_WASO', `2022`, NULL)) AS Diluted_WASO
FROM tsla_Income; 

SELECT COUNT(*), ticker
FROM Income
GROUP BY ticker; 

SELECT *
FROM Income; 

/*AMZN*/ 

UPDATE amzn_historicaldata
SET Close = REPLACE(Close, '$', ' ');
UPDATE amzn_historicaldata
SET Open = REPLACE(Open, '$', ' ');
UPDATE amzn_historicaldata
SET High = REPLACE(High, '$', ' ');
UPDATE amzn_historicaldata
SET Low = REPLACE(Low, '$', ' ');
INSERT INTO Stock
SELECT 'AMZN', STR_TO_DATE(Date, '%c/%e/%y'), Close, Volume, Open, High, Low
FROM amzn_historicaldata; 

/*APPL*/ 

UPDATE appl_historicaldata
SET Close = REPLACE(Close, '$', ' ');
UPDATE appl_historicaldata
SET Open = REPLACE(Open, '$', ' ');
UPDATE appl_historicaldata
SET High = REPLACE(High, '$', ' ');
UPDATE appl_historicaldata
SET Low = REPLACE(Low, '$', ' ');
INSERT INTO Stock
SELECT 'APPL', STR_TO_DATE(Date, '%c/%e/%y'), Close, Volume, Open, High, Low
FROM APPL_historicaldata; 

/*CSCO*/ 

UPDATE csco_historicaldata
SET Close = REPLACE(Close, '$', ' ');
UPDATE csco_historicaldata
SET Open = REPLACE(Open, '$', ' ');
UPDATE csco_historicaldata
SET High = REPLACE(High, '$', ' ');
UPDATE csco_historicaldata
SET Low = REPLACE(Low, '$', ' ');
INSERT INTO Stock
SELECT 'CSCO', STR_TO_DATE(Date, '%c/%e/%y'), Close, Volume, Open, High, Low
FROM csco_historicaldata; 

/*META*/

UPDATE meta_historicaldata
SET Close = REPLACE(Close, '$', ' ');
UPDATE meta_historicaldata
SET Open = REPLACE(Open, '$', ' ');
UPDATE meta_historicaldata
SET High = REPLACE(High, '$', ' ');
UPDATE meta_historicaldata
SET Low = REPLACE(Low, '$', ' ');
INSERT INTO Stock
SELECT 'META', STR_TO_DATE(Date, '%c/%e/%y'), Close, Volume, Open, High, Low
FROM meta_historicaldata; 

/*MFST*/

UPDATE mfst_historicaldata
SET Close = REPLACE(Close, '$', ' ');
UPDATE mfst_historicaldata
SET Open = REPLACE(Open, '$', ' ');
UPDATE mfst_historicaldata
SET High = REPLACE(High, '$', ' ');
UPDATE mfst_historicaldata
SET Low = REPLACE(Low, '$', ' ');
INSERT INTO Stock
SELECT 'MFST', STR_TO_DATE(Date, '%c/%e/%y'), Close, Volume, Open, High, Low
FROM mfst_historicaldata; 

/*NFLX*/

UPDATE nflx_historicaldata
SET Close = REPLACE(Close, '$', ' ');
UPDATE nflx_historicaldata
SET Open = REPLACE(Open, '$', ' ');
UPDATE nflx_historicaldata
SET High = REPLACE(High, '$', ' ');
UPDATE nflx_historicaldata
SET Low = REPLACE(Low, '$', ' ');
INSERT INTO Stock
SELECT 'NFLX', STR_TO_DATE(Date, '%c/%e/%y'), Close, Volume, Open, High, Low
FROM nflx_historicaldata; 

/*QCOM*/

UPDATE qcom_historicaldata
SET Close = REPLACE(Close, '$', ' ');
UPDATE qcom_historicaldata
SET Open = REPLACE(Open, '$', ' ');
UPDATE qcom_historicaldata
SET High = REPLACE(High, '$', ' ');
UPDATE qcom_historicaldata
SET Low = REPLACE(Low, '$', ' ');
INSERT INTO Stock
SELECT 'QCOM', STR_TO_DATE(Date, '%c/%e/%y'), Close, Volume, Open, High, Low
FROM qcom_historicaldata; 


/*SBUX*/

UPDATE sbux_historicaldata
SET Close = REPLACE(Close, '$', ' ');
UPDATE sbux_historicaldata
SET Open = REPLACE(Open, '$', ' ');
UPDATE sbux_historicaldata
SET High = REPLACE(High, '$', ' ');
UPDATE sbux_historicaldata
SET Low = REPLACE(Low, '$', ' ');
INSERT INTO Stock
SELECT 'SBUX', STR_TO_DATE(Date, '%c/%e/%y'), Close, Volume, Open, High, Low
FROM sbux_historicaldata; 

/*TSLA*/ 

UPDATE tsla_historicaldata
SET Close = REPLACE(Close, '$', ' ');
UPDATE tsla_historicaldata
SET Open = REPLACE(Open, '$', ' ');
UPDATE tsla_historicaldata
SET High = REPLACE(High, '$', ' ');
UPDATE tsla_historicaldata
SET Low = REPLACE(Low, '$', ' ');
INSERT INTO Stock
SELECT 'TSLA', STR_TO_DATE(Date, '%c/%e/%y'), Close, Volume, Open, High, Low
FROM tsla_historicaldata; 

SELECT *
FROM Stock; 

/* List the sector, industry, and name for each company in acending order by sectoer then industry*/ 


SELECT Sector, Industry, Name
From Company
ORDER BY Sector, Industry; 

/* List the ticker, company name, date, volume, open price, close price for the company named “Amazon.com Inc” for the months of October (10) and November (11) in 2023. 
Format the volume with commas and no decimal point.  List the result in descending order by date.*/ 

select s.Ticker, s.Date, s.Volume, s.Open, s.Close,  c.Name
from Stock s
join Company c on s.Ticker = c.Ticker
/*All of Amazons data between oct and nov 2023*/ 
where Name = "Amazon.com Inc"
	and year(s.Date) = 2023
	and month(s.Date) IN (10,11)
order by s.Date desc; 


/* List the ticker, company name, minimum net income in millions, and maximum net income in millions for each company in ascending order by company name.  
The net income columns should be called “Minimum Net Income in Millions” and “Maximum Net Income in Millions” respectively. 
Round the net income to the nearest million and format it with commas for readability. */ 

/*format for Net_Incomes to be integers*/ 
select i.Ticker, c.Name, FORMAT(MIN(i.Net_Income) / 1000000 , 0) as 'Minimum Net Income in Millions', FORMAT(MAX(i.Net_Income) /  100000, 0) as 'Maximum Net Income in Millions' 
from Income i
join Company c on c.Ticker = i.Ticker
group by i.Ticker, c.Name
order by c.Name; 


/*	List the ticker, company name, date, Morningstar_size in a column called “Size”, Morningstar_style in a column called “Style”, closing price in a column called “Closing Price”, Basic WASO in Millions in a column called “Basic WASO in Millions”, 
Diluted WASO in Millions in a column called “Diluted WASO in Millions”, Market Cap in Millions in a column of that name, and Diluted Market Cap in Millions in a column of that name for trading days in October (10) and November (11) for every available year */ 

select s.Ticker, c.Name, s.Date, c.Morningstar_size as "Size", c.Morningstar_style as "Style",
/*Concatinating and formating*/
concat('$', format(s.Close, 2)) as "Closing Price",
/* Format to become integer*/
format(i.Basic_WASO / 1000000, 0) as "Basic WASO in Millions",
format(i.Diluted_WASO / 1000000, 0) as "Diluted WASO in Millions", 
concat('$', format(s.Close * i.Basic_WASO / 1000000, 0)) as "Market Cap in Millions", 
concat('$', format(s.Close * i.Diluted_WASO / 1000000, 0)) as "Diluted Market Cap in Miliions"

/*Joins*/
from Stock s
join Company c on s.ticker = c.ticker
join Income i on s.Ticker = i.Ticker and year(s.Date) = i.Year

/*Brings days in Oct and Nov + WASOs not null*/
where month(s.Date) in (10,11) and i.Basic_WASO is not null and i.Diluted_WASO is not null

order by c.Name, s.Date desc; 

/* List the ticker, name, date, closing price in a column called “Closing Price” for the company with the highest closing price and the company with the lowest closing price in 2023.
List result in decending order by price */ 

SELECT s.Ticker, c.Name, s.Date, CONCAT('$', FORMAT(s.Close, 2)) AS "Closing Price"
FROM Stock s
JOIN Company c ON s.Ticker = c.Ticker
WHERE s.Date BETWEEN "2023-01-01" and "2023-12-31" /*all days in 2023*/ 
AND s.Close IN (
	SELECT MAX(Close) AS HighestPrice
    FROM Stock
    WHERE YEAR(Date) = 2023
    UNION ALL
    SELECT MIN(Close) as LowestPrice
    FROM Stock
    WHERE YEAR(Date) = 2023
)
/* Union the highest and lowest price of stock in 2023*/
ORDER BY s.Close DESC; 


/* List the ticker, name, and dates for two consecutive dates where the closing price on the second day is at least 12% less than the opening price on the first day.
Percentage decline should be a negative number.
Round the percent to the nearest integer. */ 

select s1.Ticker, c.Name, s1.Date AS First_Date, s1.Open AS Opening_Price, s2.Date AS Last_Date, s2.Close AS Closing_Price,
/* concat to add neg and percentage sign and mult by 100 for a percentage*/ 
CONCAT('-', ROUND(((s1.Open- s2.Close) / s1.Open) * 100), '%') AS "Percentage_Decline"
from Stock s1
join Company c on s1.Ticker = c.Ticker
join Stock s2 ON s1.Ticker = s2.Ticker AND s1.Date = Date_SUB(s2.Date, INTERVAL 1 DAY)
WHERE (s2.Close / s1.Open) <= 0.88 /* 1.00-.12*/
ORDER BY s1.Ticker, s1.Date; 

/* Use query above to list the companies that did not decline.*/ 

/* I believe this should be a select distinct bc its all Amazon however 
when I run it it takes a while and crashes the app so I only have select there*/ 
select /*Distinct*/ s1.Ticker, c.Name
from Stock s1
join Stock s2 on s1.Ticker = s2.Ticker
join Company c on s1.Ticker = c.Ticker

/* .88 bc its 12 % less than the opening price (1-.12)*/ 
where not ((s1.Open / s1.Close) <- .88); 


/* 9.	List the  Morninstar_size,  Morningstar_style, ticker, company, fiscal_year_end, year, net income in millions in a column called “Net Income in Millions”, 
and a Comment column for the company or companies with the highest net income and the company or companies with the lowest net income in each combination of Morningstar_size and Morningstar_style in the year 2022. */ 

select c.Morningstar_Size, c.Morningstar_Style, c.Ticker, c.Name, c.Fiscal_Year_End, i.Year, concat('$', format(round(i.net_income / 1000000), 0)) as "Net Income in Millions",
case
	when i.Net_Income = max(i.Net_Income) then "Highest Net Income"
    when i.Net_Income = min(i.Net_Income) then "Lowest Net Income"
    else null
end as comment
/* When Net Income has the highest net income or the lowest net income, a comment will be created corresponding to the value*/ 
from Company c
join Income i on c.Ticker = i.Ticker
where i.Year = 2022
group by c.Morningstar_Size, c.Morningstar_Style, c.Ticker, c.Name, c.Fiscal_Year_End, i.Year
order by c.Morningstar_size, c.Morningstar_Style, i.Net_Income desc; 


