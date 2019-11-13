SELECT SUM(poster_qty) total_poster_sales
FROM orders;

SELECT SUM(standard_qty) total_standard_sales
FROM orders;

SELECT SUM(total_amt_usd) total_dollar_sales
FROM orders;

SELECT (standard_amt_usd + gloss_amt_usd) total_amount
FROM orders;

SELECT SUM(standard_amt_us)/SUM(standard_qty) standard_price_per_unit
FROM orders;
