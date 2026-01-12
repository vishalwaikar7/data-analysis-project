# Customer Churn & Revenue Impact Analysis

## Objective
To analyze customer churn behavior in a bank and identify key factors contributing to customer exit, helping the business improve retention and reduce revenue loss.

---

## Dataset Overview
- Total Records: 10,000 customers
- Target Variable: Exited (1 = Churned, 0 = Retained)
- Features include:
  - Demographics (Age, Gender, Geography)
  - Account information (Balance, Tenure, Number of Products)
  - Engagement indicators (IsActiveMember, HasCrCard)
  - Financial attributes (Credit Score, Estimated Salary)

---

## Tools Used
- Python (Pandas, NumPy)
- SQL
- Power BI
- Excel

---

## Key Insights

### 1. Overall Churn Rate
- The overall customer churn rate is **~20%**, meaning **1 in 5 customers** left the bank.

### 2. Geography-Based Churn
- **Germany has the highest churn rate (~32%)**
- France and Spain have significantly lower churn (~16–17%)
- Customers from Germany are at **higher churn risk**

### 3. Gender Impact
- **Female customers churn more (~25%)** compared to males (~16%)
- Gender plays a noticeable role in churn behavior

### 4. Age Factor
- Churn increases with age:
  - Customers aged **40–60 years show the highest churn**
  - Customers below 30 have the **lowest churn**
- Middle-aged customers are the **most vulnerable segment**

### 5. Customer Activity
- **Inactive members churn almost twice as much**
  - Inactive customers: ~27% churn
  - Active customers: ~14% churn
- Engagement is a **strong retention factor**

### 6. Number of Products
- Customers with **1 product** have high churn (~27%)
- Customers with **2 products** show very low churn (~7%)
- Customers with **3 or 4 products churn extremely high**
- Optimal product count appears to be **2 products per customer**

### 7. Account Balance
- Customers with **non-zero balance churn more** than zero-balance customers
- High balances do **not guarantee loyalty**

---

## Business Recommendations
- Focus retention strategies on:
  - Customers aged 40–60
  - Customers in Germany
  - Inactive members
- Encourage customers to hold **exactly 2 products**
- Increase engagement through personalized offers and loyalty programs

---

## Conclusion
This analysis highlights that customer churn is strongly influenced by engagement level, age, geography, and product usage. Addressing these factors can significantly reduce churn and protect revenue.


