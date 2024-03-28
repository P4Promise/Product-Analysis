CREATE VIEW PRODUCT_ANALYSIS AS
SELECT
	   c.CategoryID,
       c.CategoryName,
       p.ProductID AS TotalProducts,
       p.UnitPrice AS ProductPrice,
       p.ProductName,
	   o.Quantity,
       MONTH (m.OrderDate) AS Order_Month
FROM products p
LEFT JOIN Categories c ON c.CategoryID = p.CategoryID
LEFT JOIN `order details` o ON p.ProductID = o.ProductID
LEFT JOIN orders m ON o.OrderID = m.OrderID
WHERE c.CategoryID is not null; 


