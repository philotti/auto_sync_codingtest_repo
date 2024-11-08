SELECT 
    I.animal_id, I.animal_type, I.name
FROM
    animal_ins AS I
        INNER JOIN
    animal_outs AS O ON I.animal_id = O.animal_id
WHERE
    I.sex_upon_intake LIKE 'Intact%'
        AND (O.sex_upon_outcome LIKE 'Spayed%'
        OR O.sex_upon_outcome LIKE 'Neutered%')
ORDER BY animal_id;
