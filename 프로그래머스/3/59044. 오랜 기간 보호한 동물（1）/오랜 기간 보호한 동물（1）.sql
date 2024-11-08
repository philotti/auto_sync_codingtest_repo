SELECT 
    I.name, I.datetime
FROM
    animal_ins AS I
        LEFT JOIN
    animal_outs AS O ON I.animal_id = O.animal_id
WHERE
    O.animal_id IS NULL
ORDER BY datetime
LIMIT 3;