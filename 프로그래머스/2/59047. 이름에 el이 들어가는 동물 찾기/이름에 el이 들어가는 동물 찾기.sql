SELECT 
    animal_id, name
FROM
    animal_ins
WHERE
    name LIKE '%EL%' AND animal_type = 'dog'
ORDER BY name;