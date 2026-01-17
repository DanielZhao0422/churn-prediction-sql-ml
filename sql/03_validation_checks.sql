DROP TABLE IF EXISTS model_features;

CREATE TABLE model_features AS
SELECT
    churn,
    tenure,
    MonthlyCharges,
    TotalCharges,
    CASE WHEN Contract = 'Month-to-month' THEN 1 ELSE 0 END AS is_monthly_contract,
    CASE WHEN InternetService != 'No' THEN 1 ELSE 0 END AS has_internet,
    CASE WHEN TechSupport = 'Yes' THEN 1 ELSE 0 END AS has_tech_support
FROM customers_clean;
