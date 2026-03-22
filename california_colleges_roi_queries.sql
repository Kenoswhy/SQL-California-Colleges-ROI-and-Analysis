-- Top 10 most expensive schools
SELECT school_name, total_cost_of_attendance
FROM california_college_cost_roi
ORDER BY total_cost_of_attendance DESC
LIMIT 10;

-- Top 10 schools by median earnings after graduation
SELECT school_name, median_earnings_after_grad
FROM california_college_cost_roi
ORDER BY median_earnings_after_grad DESC
LIMIT 10;

-- Average total cost of attendance by system type
SELECT system_type, AVG(total_cost_of_attendance) AS avg_cost
FROM california_college_cost_roi
GROUP BY system_type;

-- Average median earnings after graduation by system type
SELECT system_type, AVG(median_earnings_after_grad) AS avg_earnings
FROM california_college_cost_roi
GROUP BY system_type;

-- Top 10 schools by earnings-to-cost ratio
SELECT school_name,
       median_earnings_after_grad,
       total_cost_of_attendance,
       ROUND(1.0 * median_earnings_after_grad / total_cost_of_attendance, 2) AS earnings_to_cost_ratio
FROM california_college_cost_roi
WHERE total_cost_of_attendance IS NOT NULL
  AND median_earnings_after_grad IS NOT NULL
ORDER BY earnings_to_cost_ratio DESC
LIMIT 10;

-- Top 10 schools by earnings-to-debt ratio
SELECT school_name,
       median_earnings_after_grad,
       average_debt,
       ROUND(1.0 * median_earnings_after_grad / average_debt, 2) AS earnings_to_debt_ratio
FROM california_college_cost_roi
WHERE average_debt IS NOT NULL
  AND average_debt > 0
  AND median_earnings_after_grad IS NOT NULL
ORDER BY earnings_to_debt_ratio DESC
LIMIT 10;

-- Lowest average debt schools
SELECT school_name, average_debt
FROM california_college_cost_roi
WHERE average_debt IS NOT NULL
ORDER BY average_debt ASC
LIMIT 10;

-- Highest graduation rate schools
SELECT school_name, graduation_rate
FROM california_college_cost_roi
WHERE graduation_rate IS NOT NULL
ORDER BY graduation_rate DESC
LIMIT 10;

-- Average graduation rate by system type
SELECT system_type, AVG(graduation_rate) AS avg_graduation_rate
FROM california_college_cost_roi
GROUP BY system_type;

-- Schools with high earnings and high graduation rate
SELECT school_name,
       graduation_rate,
       median_earnings_after_grad
FROM california_college_cost_roi
WHERE graduation_rate IS NOT NULL
  AND median_earnings_after_grad IS NOT NULL
ORDER BY graduation_rate DESC, median_earnings_after_grad DESC
LIMIT 10;

-- Lowest cost schools
SELECT school_name, total_cost_of_attendance
FROM california_college_cost_roi
WHERE total_cost_of_attendance IS NOT NULL
ORDER BY total_cost_of_attendance ASC
LIMIT 10;

-- Best graduation-rate-to-cost value
SELECT school_name,
       graduation_rate,
       total_cost_of_attendance,
       ROUND(1.0 * graduation_rate / total_cost_of_attendance, 4) AS graduation_to_cost_ratio
FROM california_college_cost_roi
WHERE graduation_rate IS NOT NULL
  AND total_cost_of_attendance IS NOT NULL
ORDER BY graduation_to_cost_ratio DESC
LIMIT 10;