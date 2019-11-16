SELECT MIN(occurred_at)
FROM orders;

SELECT occurred_at
FROM orders
ORDER BY occurred_at
LIMIT 1;

SELECT MAX(occurred_at)
FROM web_events;

SELECT occurred_at
FROM web_events
ORDER BY occurred_at DESC
LIMIT 1;

SELECT AVG(standard_amt_usd) avg_standard_usd,
  AVG(standard_qty) avg_standard_qty,
  AVG(gloss_amt_usd) avg_gloss_usd, 
  AVG(gloss_qty) avg_gloss_qty,
  AVG(poster_amt_usd) avg_poster_usd,
  AVG(poster_qty) avg_poster_qty
FROM orders;

SELECT *
FROM (SELECT total_amt_usd
      FROM orders
      ORDER by total_amt_usd
      LIMIT 3457) AS Table1
ORDER BY total_amt_usd DESC
LIMIT 2;
