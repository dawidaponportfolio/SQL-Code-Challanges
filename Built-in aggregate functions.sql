SELECT SUM((price - (select AVG(price) FROM items))*(price - (select AVG(price) FROM items)))/ COUNT(*) AS STD
FROM items;