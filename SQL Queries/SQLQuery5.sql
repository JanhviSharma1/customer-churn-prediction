
-- View for Churned or Stayed customers
CREATE VIEW dbo.vw_ChurnData AS
SELECT * 
FROM dbo.prod_Churn
WHERE Customer_Status IN ('Churned', 'Stayed');
GO

-- View for Joined customers
CREATE VIEW dbo.vw_JoinData AS
SELECT * 
FROM dbo.prod_Churn
WHERE Customer_Status = 'Joined';
GO