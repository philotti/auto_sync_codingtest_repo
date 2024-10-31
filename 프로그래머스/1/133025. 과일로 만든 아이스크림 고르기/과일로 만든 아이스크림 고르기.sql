SELECT first_half.flavor 
    FROM first_half
    LEFT JOIN icecream_info 
        ON first_half.flavor = icecream_info.flavor
WHERE first_half.total_order > 3000
    and icecream_info.ingredient_type = 'fruit_based';