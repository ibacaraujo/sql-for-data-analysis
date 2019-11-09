SELECT r.name region, s.name sales_rep, a.name account
FROM region r
JOIN sales_reps s
ON r.id = s.region_id
JOIN accounts a
ON s.id = a.sales_rep_id
AND r.name = 'Midwest';
