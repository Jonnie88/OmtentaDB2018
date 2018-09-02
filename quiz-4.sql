use classicmodels;


SELECT country, sum(quantityOrdered *  priceEach)"total"
FROM  orders as o
  LEFT JOIN customers AS c
    on o.customerNumber = c.customerNumber
  LEFT JOIN  orderDetails  AS oD
    on o.orderNumber =oD.orderNumber
  WHERE year(o.orderDate)=2005
GROUP BY c.country
ORDER BY total DESC
LIMIT  5;
