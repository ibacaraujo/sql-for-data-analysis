SELECT a.primary_poc, w.occurred_at, 
  w.channel, a.name
FROM web_events w
JOIN accounts a
ON w.account_id = a.id;

SELECT r.name region, s.name rep, a.name account
FROM region r
JOIN sales_reps s
ON r.id = s.region_id
JOIN accounts a
ON s.id = a.sales_rep_id
ORDER BY account;

SELECT r.name region, o.id order_name, a.name account, 
  (o.total_amt_usd/(o.total + 0.01)) unit_price
FROM accounts a
JOIN sales_reps s
ON a.sales_rep_id = s.id
JOIN orders o
ON o.account_id = a.id
JOIN region r
ON r.id = s.region_id;
