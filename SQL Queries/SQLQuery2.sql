USE db_Churn;
SELECT 
    Gender, 
    COUNT(Gender) AS TotalCount,
    COUNT(Gender) * 100.0 / (SELECT COUNT(*) FROM dbo.stg_Churn) AS Percentage
FROM 
    dbo.stg_Churn
GROUP BY 
    Gender;


Select Contract, Count(Contract) as TotalCount, 
Count(Contract) * 1.0 / (Select Count(*) from stg_Churn) AS Percentage from stg_Churn Group by Contract; 

Select Customer_Status, Count(Customer_Status) as TotalCount, 
Sum(Total_Revenue) as TotalRev, Sum(Total_Revenue)/ (Select sum(Total_Revenue) from stg_Churn) * 100 as RevPercentage 
from stg_Churn 
Group by Customer_Status;
 
SELECT 
    State, 
    COUNT(State) AS TotalCount, 
    CAST(COUNT(State) * 100.0 / (SELECT COUNT(*) FROM dbo.stg_Churn) AS DECIMAL(5,2)) AS Percentage
FROM 
    dbo.stg_Churn
GROUP BY 
    State
ORDER BY 
    Percentage DESC;

Select Distinct  Internet_Type
from stg_Churn