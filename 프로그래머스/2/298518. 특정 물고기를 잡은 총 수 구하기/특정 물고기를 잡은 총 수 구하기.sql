SELECT 
    COUNT(*) AS fish_count
FROM
    fish_info AS I
        INNER JOIN
    fish_name_info AS N ON I.fish_type = N.fish_type
WHERE
    N.fish_name LIKE 'bass'
        OR N.fish_name LIKE 'snapper';