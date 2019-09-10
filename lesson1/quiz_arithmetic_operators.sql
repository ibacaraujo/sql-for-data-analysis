SELECT (standard_amt_usd / standard_qty) AS unit_price, id, account_id
FROM orders
LIMIT 10;

SELECT (poster_amt_usd / (standard_amt_usd + gloss_amt_usd + poster_amt_usd)) * 100 AS pctg_rev_poster
FROM orders 
LIMIT 10;
