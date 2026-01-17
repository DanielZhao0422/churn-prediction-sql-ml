DROP TABLE IF EXISTS customers_clean;

CREATE TABLE customers_clean AS
SELECT
    customerID,
    gender,
    SeniorCitizen,
    Partner,
    Dependents,
    tenure,
    PhoneService,
    MultipleLines,
    InternetService,
    OnlineSecurity,
    OnlineBackup,
    DeviceProtection,
    TechSupport,
    StreamingTV,
    StreamingMovies,
    Contract,
    PaperlessBilling,
    PaymentMethod,
    MonthlyCharges,
    TotalCharges,
    CASE
        WHEN Churn = 'Yes' THEN 1
        ELSE 0
    END AS churn
FROM customers_raw
WHERE TotalCharges IS NOT NULL
  AND TotalCharges != '';