USE ChurnAnalysis 
DROP TABLE IF EXISTS TelcoChurn;
CREATE TABLE TelcoChurn(customerID VARCHAR(50),
gender VARCHAR(10),
SeniorCitizen INT,
tenure INT,
MonthlyCharges FLOAT,
TotalCharges FLOAT,
Contract VARCHAR(20),
Churn VARCHAR(10)
);

SELECT COUNT(*) FROM TelcoChurn
select top 10 * from TelcoChurn

SELECT Contract,
		COUNT(*) AS TotalCustomers,
		SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS ChurnedCustomers,
		ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1.0 ELSE 0 END)/COUNT(*) * 100, 2) AS ChurnRate
FROM TelcoChurn
GROUP BY Contract
ORDER BY ChurnRate DESC;

SELECT name FROM sys.tables;