-- Day 4 – Questions to the vendors table (Supabase SQL Editor)
-- Lines starting with -- are comments: notes for humans, the database ignores them.


-- Question 1: Which vendors have a balance ABOVE their credit limit?
-- Excel equivalent: filter rows where balance > credit_limit
SELECT
  name,
  city,
  credit_limit,
  balance,
  balance - credit_limit AS over_by      -- new column: how much above the limit
FROM vendors                             -- the table to look in
WHERE balance > credit_limit             -- keep only rows over the limit (the filter)
ORDER BY over_by DESC;                   -- biggest problem first (the sort)


-- Question 2: What is the TOTAL balance in each city?
-- Excel equivalent: pivot table with City in rows, Sum of Balance in values
SELECT
  city,
  COUNT(*)     AS vendors,               -- how many vendors in that city
  SUM(balance) AS total_balance          -- add up their balances
FROM vendors
GROUP BY city                            -- one result row per city (the pivot)
ORDER BY total_balance DESC;             -- highest total first


-- Bonus question 3: Which vendors are OVERDUE, and by how many days?
-- Excel equivalent: filter due_date < TODAY(), then =TODAY()-due_date
SELECT
  name,
  city,
  balance,
  due_date,
  CURRENT_DATE - due_date AS days_overdue   -- today minus due date
FROM vendors
WHERE due_date < CURRENT_DATE               -- due date already passed
ORDER BY due_date;                          -- oldest first
