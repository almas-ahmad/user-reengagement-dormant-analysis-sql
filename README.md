# user-reengagement-dormant-analysis-sql
SQL-based analysis to identify dormant users who return after long inactivity periods, helping product and growth teams measure re-engagement and user lifecycle health.

# User Re-Engagement (Dormant User Revival) Analysis using SQL

## 📌 Business Problem
User inactivity is a major challenge for digital products.
This project identifies users who became dormant and later returned,
helping product and growth teams measure re-engagement effectiveness.

---

## 📊 Dataset
**Table: user_activity**

| Column | Description |
|------|-------------|
| user_id | Unique user identifier |
| activity_date | Date of user activity |

---

## 🧠 Approach
1. Order user activity chronologically
2. Calculate inactivity gaps using window functions
3. Identify users with long inactivity periods (30+ days)
4. Classify users as re-engaged or regular

---

## 🛠 SQL Concepts Used
- Window Functions (`LAG`)
- Date calculations
- Conditional logic (`CASE`)
- Aggregations

---

## 📈 Key Metrics
- Maximum inactivity gap per user
- Re-engaged vs regular users
- Dormancy duration

---

## 💼 Business Impact
- Measures success of re-engagement campaigns
- Identifies users worth targeting
- Improves lifecycle and retention strategy

---

## 🎯 Ideal Use Cases
- Product analytics
- Growth analytics
- SaaS / Fintech platforms
- Subscription-based products

---

## 👤 Author
Almas Ahmad  
Data Analyst | Product & Business Analytics
