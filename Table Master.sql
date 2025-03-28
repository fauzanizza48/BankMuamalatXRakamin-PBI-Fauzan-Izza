SELECT 
    o.Date AS order_date,
    pc.CategoryName AS category_name,
    p.ProdName AS product_name,
    p.Price AS product_price,
    o.Quantity AS order_qty,
    (o.Quantity * p.Price) AS total_sales,
    c.CustomerEmail AS cust_email,
    c.CustomerCity AS cust_city
FROM `bank-muamalat-454605.dataset_5.orders` o
LEFT JOIN `bank-muamalat-454605.dataset_5.customers` c 
    ON o.CustomerID = c.CustomerID
LEFT JOIN `bank-muamalat-454605.dataset_5.products` p 
    ON o.ProdNumber = p.ProdNumber
LEFT JOIN `bank-muamalat-454605.dataset_5.product category` pc 
    ON p.Category = pc.CategoryID
ORDER BY order_date ASC;