use classicmodels;

SELECT  sum(p.buyPrice),p.productLine FROM products AS p GROUP BY p.productLine;