SELECT 
    animal_id, name, sex_upon_intake
FROM
    animal_ins
WHERE
    name IN ('Lucy' , 'Ella', 'Rogan', 'Sabrina', 'Mitty', 'Pickle')
ORDER BY animal_id;