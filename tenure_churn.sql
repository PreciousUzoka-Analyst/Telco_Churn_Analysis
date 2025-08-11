SELECT CASE 
		WHEN tenure <= 6 THEN '0-6 Months'
		WHEN tenure <= 12 THEN '7-12 Months'
		WHEN tenure <= 24 THEN '13-24 Months'
	ELSE '>24 Months'
	END AS TenureGroup,
	COUNT(*) AS ChurnedCustomers
FROM TelcoChurn
WHERE Churn = 'Yes'
GROUP BY CASE 
		WHEN tenure <= 6 THEN '0-6 Months'
		WHEN tenure <= 12 THEN '7-12 Months'
		WHEN tenure <= 24 THEN '13-24 Months'
		ELSE '>24 Months'
	END
ORDER BY ChurnedCustomers DESC;

SELECT CASE 
		WHEN tenure <= 6 THEN '0-6 Months'
		WHEN tenure <= 12 THEN '7-12 Months'
		WHEN tenure <= 24 THEN '13-24 Months'
	ELSE '>24 Months'
	END AS TenureGroup,
	ROUND(AVG(MonthlyCharges), 1) AS AvgMonthlyCharges
FROM TelcoChurn
GROUP BY CASE 
		WHEN tenure <= 6 THEN '0-6 Months'
		WHEN tenure <= 12 THEN '7-12 Months'
		WHEN tenure <= 24 THEN '13-24 Months'
		ELSE '>24 Months'
	END;