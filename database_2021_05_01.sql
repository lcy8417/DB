show databases;
create database ex;
use ex;
SELECT provider, COUNT(*) FROM items GROUP BY provider ORDER BY COUNT(*) DESC;
SELECT DISTINCT provider FROM items;
SELECT provider, COUNT(*) AS total_count FROM items GROUP BY provider;
SELECT provider, count(*) FROM items GROUP BY provider HAVING count(*)<= 100;
SELECT provider, count(*) AS total_products FROM items WHERE provider != '세정글로벌' GROUP BY provider HAVING count(*)<= 100 ORDER BY COUNT(*) DESC;SELECT * FROM items i INNER JOIN ranking r ON r.item_code = i.item_code;

SELECT items.provider, COUNT(*) FROM ranking 
INNER JOIN items ON items.item_code = ranking.item_code 
WHERE ranking.main_category = 'ALL'
GROUP BY items.provider
ORDER BY COUNT(*) DESC;

SELECT items.provider, COUNT(*) FROM ranking
INNER JOIN items ON items.item_code = ranking.item_code
WHERE ranking.main_category = '패션의류'
GROUP BY items.provider HAVING COUNT(*) > 5;

SELECT items.provider, COUNT(*) FROM ranking 
INNER JOIN items on items.item_code = ranking.item_code
WHERE main_category = '신발/잡화'
GROUP BY items.provider HAVING COUNT(*) > 10 ORDER BY COUNT(*) DESC;

SELECT AVG(i.dis_price), MAX(i.dis_price), MIN(i.dis_price) 
FROM ranking r INNER JOIN items i ON i.item_code = r.item_code
WHERE r.main_category = '화장품/헤어';

SELECT title FROM items
WHERE item_code IN (SELECT item_code FROM ranking WHERE sub_category = '여성신발');

SELECT MAX(items.dis_price) FROM items
INNER JOIN ranking on items.item_code = ranking.item_code
WHERE ranking.sub_category = '여성신발';

SELECT MAX(items.dis_price) FROM items
WHERE item_code IN (SELECT item_code FROM ranking WHERE sub_category = '여성신발');
 
SELECT main_category, COUNT(*) FROM ranking
WHERE item_code IN(SELECT item_code FROM items WHERE dis_price >= 100000)
GROUP BY main_category;

SELECT ranking.main_category, ranking.sub_category, AVG(items.dis_price), AVG(items.discount_percent) FROM items
INNER JOIN ranking ON items.item_code = ranking.item_code
GROUP BY ranking.main_category, ranking.sub_category;

SELECT provider, COUNT(*), AVG(items.dis_price), AVG(items.discount_percent) FROM items
INNER JOIN ranking ON items.item_code = ranking.item_code 
GROUP BY provider ORDER BY COUNT(*) DESC;

SELECT main_category, provider, AVG(items.dis_price), AVG(items.discount_percent), COUNT(*)
FROM items INNER JOIN ranking ON items.item_code = ranking.item_code
GROUP BY provider, main_category HAVING COUNT(*) >= 2
