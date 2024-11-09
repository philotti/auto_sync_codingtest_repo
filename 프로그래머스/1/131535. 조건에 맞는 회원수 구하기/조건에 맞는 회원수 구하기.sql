SELECT 
    COUNT(*) AS users
FROM
    user_info
WHERE
    YEAR(joined) = 2021 AND age > 19
        AND age < 30;