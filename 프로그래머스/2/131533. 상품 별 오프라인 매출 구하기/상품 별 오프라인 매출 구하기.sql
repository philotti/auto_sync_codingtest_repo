SELECT 
    P.product_code, SUM(sales_amount * P.price) AS SALES
FROM
    product AS P
        INNER JOIN
    offline_sale AS O ON P.product_id = O.product_id
GROUP BY product_code
ORDER BY SALES DESC , product_code;