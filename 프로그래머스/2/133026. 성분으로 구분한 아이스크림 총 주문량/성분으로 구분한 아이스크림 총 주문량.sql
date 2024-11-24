SELECT 
    II.ingredient_type, SUM(total_order) AS total_order
FROM
    first_half AS FH
        INNER JOIN
    icecream_info AS II ON FH.flavor = II.flavor
GROUP BY II.ingredient_type
ORDER BY 2;