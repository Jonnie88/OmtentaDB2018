use classicmodels;

SELECT format(sum(quantityOrdered*priceEach),'#,0.00') FROM orders as o LEFT JOIN orderDetails AS oD on o.orderNumber = oD.orderNumber WHERE status = 'Disputed';

