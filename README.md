# Customer Churn Analysis with SQL and Interpretable Modeling

## Overview
This project analyzes customer churn in a telecom setting with the goal of
identifying which customer attributes are most strongly associated with churn risk.
Rather than focusing solely on predictive performance, the emphasis is on using
**SQL-first feature engineering** and **interpretable modeling** to produce insights
that are directly actionable for business decision-making.

The workflow mirrors a realistic analytics pipeline in which raw operational data
is stored in a relational database, queried and transformed using SQL, and then
passed to Python for statistical modeling.

---

## Data
The dataset used is the publicly available *Telco Customer Churn* dataset, which
contains customer demographics, service subscriptions, billing information, and
churn outcomes.

Raw data is treated as externally collected and potentially imperfect, reflecting
real-world conditions rather than a curated machine learning benchmark.

---

## Methodology

### 1. Data ingestion
- Raw CSV data is loaded into a local SQLite database.
- The database serves as the single source of truth for subsequent analysis.

### 2. SQL-based feature engineering
- Business rules and cleaning logic are implemented directly in SQL.
- A clean customer table is created with churn encoded as a binary variable.
- A model-ready feature table is derived using SQL transformations, including
  contract structure and service availability indicators.

### 3. Validation and exploratory queries
- Aggregations are performed in SQL to validate expected churn patterns
  (e.g., tenure, pricing, contract type).
- This step ensures that features capture meaningful business signals before
  modeling.

### 4. Modeling
- A logistic regression model is trained using features extracted from the database.
- Explicit type coercion and validation are applied to handle schema inconsistencies
  between SQL and Python.
- Model evaluation uses classification metrics and ROC–AUC.

---

## Results
The model achieves an accuracy of approximately **78%** with a ROC–AUC of **~0.83**.
Performance is stronger for non-churn customers than churn customers, reflecting
class imbalance in the data.

Despite its simplicity, the model demonstrates that a substantial portion of churn
risk can be explained using standard operational features such as tenure, monthly
charges, contract type, and access to technical support. The emphasis on
interpretability allows these relationships to be directly translated into
potential retention strategies.

---

## Key Takeaways
- SQL is an effective layer for feature engineering and business logic, not just
  data storage.
- Simple, interpretable models can provide actionable insights without complex
  architectures.
- Clear separation between data storage, transformation, and modeling improves
  reproducibility and transparency.