-- Comments in SQL Start with dash-dash --
--1--
SELECT * FROM analytics WHERE id = 1880;
--2--
SELECT id , name FROM analytics WHERE last_updated = '08-01-2018';
--3--
SELECT category , COUNT(*) FROM analytics GROUP BY category;
--4--
SELECT app_name , reviews FROM analytics ORDER BY reviews DESC LIMIT 5;
--5--
SELECT app_name FROM analytics WHERE rating >= 4.8 ORDER BY reviews DESC LIMIT 1;
--6-- 
SELECT category , AVG(rating) from analytics GROUP BY category ORDER BY AVG(rating) DESC;
--7--
SELECT app_name , price , rating FROM analytics WHERE rating < 3 ORDER BY price DESC LIMIT 1;
--8-- 
SELECT app_name FROM analytics WHERE min_installs <= 50 AND rating IS NOT NULL ORDER BY rating DESC;
--9--
SELECT app_name FROM analytics WHERE rating < 3 AND reviews >= 1000;
--10--
SELECT app_name FROM analytics WHERE price BETWEEN 0.1 AND 1 ORDER BY reviews DESC LIMIT 10;
--11--
SELECT app_name FROM analytics ORDER BY last_updated ASC LIMIT 1;
SELECT app_name FROM analytics WHERE last_updated = (SELECT MIN(last_updated) FROM analytics);
--12--
SELECT app_name FROM analytics WHERE price = (SELECT MAX(price) FROM analytics);
--13--
SELECT SUM(reviews) FROM analytics;
--14--
SELECT category , COUNT(*) AS app_count FROM analytics GROUP BY category HAVING COUNT(*) > 300;
--15--
SELECT app_name , reviews, min_installs, reviews / min_installs AS minproportion FROM analytics WHERE min_installs >= 100000 ORDER BY reviews / min_installs DESC  LIMIT 1;