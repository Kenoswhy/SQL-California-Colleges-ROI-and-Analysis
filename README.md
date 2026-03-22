# SQL-California-Colleges-ROI-and-Analysis
# California College Cost and ROI Analysis Using SQL

## Project Overview
This project analyzes California colleges using SQL to compare cost, graduation outcomes, post-graduation earnings, and return-on-investment style measures.

The dataset includes three major groups of California institutions:
- University of California (UC)
- California State University (CSU)
- Private colleges and universities

The goal of this project was to explore which schools appear strongest in terms of affordability, earnings potential, debt burden, and overall value.

---

## Dataset
The dataset was stored in a SQLite table called:

`california_college_cost_roi`

### Columns used
- `system_type`
- `school_name`
- `city`
- `tuition_in_state`
- `room_board`
- `total_cost_of_attendance`
- `graduation_rate`
- `median_earnings_after_grad`
- `average_debt`
- `school_type`

---

## Questions Answered
This project used SQL to answer the following questions:

1. Which schools have the highest total cost of attendance?
2. Which schools have the highest median earnings after graduation?
3. What is the average total cost of attendance by system type?
4. What is the average median earnings after graduation by system type?
5. Which schools have the best earnings-to-cost ratio?
6. Which schools have the best earnings-to-debt ratio?
7. Which schools have the lowest average debt?
8. Which schools have the highest graduation rate?
9. What is the average graduation rate by system type?
10. Which schools combine high graduation rates with high earnings?
11. Which schools have the lowest total cost of attendance?
12. Which schools have the best graduation-rate-to-cost value?

---

## SQL Skills Demonstrated
This project demonstrates the following SQL skills:
- `SELECT`
- `WHERE`
- `ORDER BY`
- `GROUP BY`
- aggregate functions such as `AVG()`
- calculated fields using arithmetic
- filtering missing values with `IS NOT NULL`
- ranking results with `LIMIT`

---

## Key Findings
### 1. Private schools were the most expensive group by far.
Average total cost of attendance was about **$86.6k** for private schools, compared with about **$40.4k** for UCs and **$29.3k** for CSUs.

### 2. Private schools also had the highest average post-graduation earnings.
Average median earnings were about **$95.4k** for private schools, versus **$77.4k** for UCs and **$67.4k** for CSUs.

### 3. The most expensive schools were almost entirely private institutions.
Pomona College, Pepperdine University, USC, Harvey Mudd College, and Stanford University ranked among the highest-cost schools in the dataset.

### 4. The highest-earning schools were mostly private, but some public universities performed strongly.
Harvey Mudd College, Caltech, Stanford, and Santa Clara University were among the leaders, while UC Berkeley, UC San Diego, and Cal Poly San Luis Obispo also ranked highly.

### 5. CSUs dominated the earnings-to-cost ratio rankings.
Cal Poly San Luis Obispo had the strongest earnings-to-cost ratio, and several other CSU campuses such as Fresno State, San Jose State, Chico State, and Long Beach State, also performed well. This suggests that lower-cost public institutions can deliver strong value.

### 6. UC San Diego stood out as a strong public option.
UC San Diego appeared in the top earnings list and also ranked well on both earnings-to-cost and earnings-to-debt measures.

### 7. Stanford University led the earnings-to-debt ratio ranking.
Stanford had the strongest debt-adjusted outcome in the dataset, followed by UC Berkeley, Pomona College, UC Davis, and UCLA.

### 8. Higher price did not always mean better value.
Although private schools had the highest average earnings, CSU and UC campuses often performed better once cost and debt were taken into account.

### 9. Graduation rate adds another way to evaluate value.
Schools with both high graduation rates and strong earnings may offer a more balanced measure of success than cost or earnings alone.

### 10. Public schools offered some of the best affordability-value combinations.
Lower-cost CSU campuses may not always lead in raw earnings, but they often perform extremely well when measured against cost.

---

## Conclusion
This SQL project shows that California colleges differ substantially in cost, debt, and post-graduation outcomes. Private colleges led in both cost and raw earnings, while CSU campuses often delivered the strongest earnings-to-cost value. UC campuses, particularly schools like UC Berkeley and UC San Diego, offered strong performance by combining relatively high earnings with lower cost and debt than many private institutions. Overall, the analysis suggests that lower-cost public universities can provide some of the strongest return-on-investment outcomes in California.

---

## Files
- `california_college_cost_roi.csv` — dataset
- `california_colleges_roi_queries` — SQL queries used in the project
- `README.md` — project summary and findings
