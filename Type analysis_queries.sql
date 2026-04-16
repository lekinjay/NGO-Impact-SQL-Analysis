-- TASK 1: top 5 fuunding Assignments by donor type
WITH donation_totals AS(
SELECT 
	ass.assignment_name, 
	ass.region, 
	ROUND(SUM(don.amount),2) AS rounded_total_donation_amount,
	donr.donor_type
FROM assignments AS ass
INNER JOIN donations AS don
ON ass.assignment_id = don.assignment_id
INNER JOIN donors AS donr
ON don.donor_id = donr.donor_id
GROUP BY ass.assignment_name, ass.region,donr.donor_type
)
SELECT
	assignment_name, 
	region,
	rounded_total_donation_amount,
	donor_type
FROM donation_totals	
ORDER BY rounded_total_donation_amount DESC
LIMIT 5;


-- TASK 2: Highest impact Assignment Per Region
WITH assignment_donations AS(
  SELECT
	a.assignment_id,
	a.assignment_name,
	a.region,
	a.impact_score,
	COUNT(d.donation_id) AS num_total_donations
  FROM assignments AS a
	INNER JOIN donations AS d
	USING(assignment_id)
	GROUP BY a.assignment_id,a.assignment_name,a.region,a.impact_score
),
ranked_assignments AS(
	SELECT
	assignment_name,
	region,
	impact_score,
	num_total_donations,
	ROW_NUMBER() OVER(PARTITION BY region ORDER BY impact_score DESC) AS ranked
	FROM assignment_donations
)
SELECT
   assignment_name,
   region,
   impact_score,
   num_total_donations
FROM ranked_assignments
WHERE ranked = 1
ORDER BY region ASC;