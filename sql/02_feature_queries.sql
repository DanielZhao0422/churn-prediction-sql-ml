SELECT
    churn,
    COUNT(*) AS customers,
    ROUND(AVG(tenure), 1) AS avg_tenure,
    ROUND(AVG(MonthlyCharges), 2) AS avg_monthly_charges,
    ROUND(AVG(TotalCharges), 2) AS avg_total_charges,
    ROUND(AVG(is_monthly_contract), 3) AS pct_month_to_month,
    ROUND(AVG(has_tech_support), 3) AS pct_with_tech_support
FROM model_features
GROUP BY churn;
