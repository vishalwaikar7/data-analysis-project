
create database ChurnPrediction;

use ChurnPrediction;

select * from fintech_churn_cleaned;

SELECT
  Geography_Germany,
  Geography_Spain,
  COUNT(*) AS cnt
FROM fintech_churn_cleaned
GROUP BY Geography_Germany, Geography_Spain;

SELECT
  Geography,
  IsActiveMember,
  ROUND(SUM(Churn) * 100.0 / COUNT(*), 2) AS ChurnRate
FROM (
  SELECT
    CASE
      WHEN Geography_Germany = TRUE THEN 'Germany'
      WHEN Geography_Spain   = TRUE THEN 'Spain'
      ELSE 'France'
    END AS Geography,
    IsActiveMember,
    Churn
  FROM fintech_churn_cleaned
) t
GROUP BY Geography, IsActiveMember
ORDER BY Geography, IsActiveMember;

ALTER TABLE fintech_churn_cleaned
ADD COLUMN Geographyy VARCHAR(20);

UPDATE fintech_churn_cleaned
SET Geographyy =
  CASE
    WHEN Geography_Germany = TRUE THEN 'Germany'
    WHEN Geography_Spain   = TRUE THEN 'Spain'
    ELSE 'France'
  END;

SET SQL_SAFE_UPDATES = 1;





DESCRIBE fintech_churn_cleaned;



SET SQL_SAFE_UPDATES = 0;

UPDATE fintech_churn_cleaned
SET Geography =
  CASE
    WHEN Geography_Germany = 'True' OR Geography_Germany = 1 THEN 'Germany'
    WHEN Geography_Spain   = 'True' OR Geography_Spain   = 1 THEN 'Spain'
    ELSE 'France'
  END;
  
  SET SQL_SAFE_UPDATES = 1;
  
SELECT
  Geography,
  IsActiveMember,
  ROUND(SUM(Churn) * 100.0 / COUNT(*), 2) AS ChurnRate
FROM fintech_churn_cleaned
GROUP BY Geography, IsActiveMember
ORDER BY Geography, IsActiveMember;

select * from high_risk_customers;

select count(CustomerId) as CustomerId from high_risk_customers; 







