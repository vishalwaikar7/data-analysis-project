use bank_analytics;

# Year wise loan amount Stats

SELECT 
    YEAR(STR_TO_DATE(issue_d, '%d-%m-%Y')) AS issue_year,
    SUM(loan_amnt) AS total_loan_amount
FROM finance_1
GROUP BY issue_year
ORDER BY issue_year;


# Grade and sub grade wise revol_bal

SELECT f1.grade, f1.sub_grade, SUM(f2_agg.revol_bal_sum) AS total_revol_bal_by_subgrade,
SUM(SUM(f2_agg.revol_bal_sum)) OVER (PARTITION BY f1.grade) AS total_revol_bal_by_grade
FROM finance_1 f1 JOIN (SELECT id, SUM(revol_bal) AS revol_bal_sum FROM
finance_two GROUP BY id) f2_agg ON f1.id = f2_agg.id 
GROUP BY f1.grade, f1.sub_grade
ORDER BY f1.grade, f1.sub_grade;
    

#Total Payment for Verified Status Vs Total Payment for Non Verified Status

select f1.verification_status, sum(f2.total_pymnt) as Total_Payment 
from finance_1 f1 
join finance_two f2 on f1.id=f2.id
WHERE f1.verification_status IN ('Verified', 'Not Verified')
group by f1.verification_status;

# State wise and last_credit_pull_d wise loan status

select f1.addr_state, f2.last_credit_pull_d, f1.loan_status, count(*) as Total_loans 
from finance_1 f1 join finance_two f2 on f1.id=f2.id 
group by f1.addr_state, f2.last_credit_pull_d, f1.loan_status order by f1.addr_state,
f2.last_credit_pull_d;

# Home ownership Vs last payment date stats

select f1.home_ownership, f2.last_pymnt_d, count(*) as Total_Loans 
from finance_1 f1 join finance_two f2 on f1.id=f2.id
group by f1.home_ownership, f2.last_pymnt_d 
order by f1.home_ownership, f2.last_pymnt_d;







