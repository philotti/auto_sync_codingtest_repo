SELECT 
    B.category, SUM(BS.sales) AS total_sales
FROM
    book AS B
        LEFT JOIN
    book_sales AS BS ON B.book_id = BS.book_id
WHERE
    BS.sales_date BETWEEN '2022-01-01' AND '2022-01-31'
GROUP BY 1
ORDER BY 1;