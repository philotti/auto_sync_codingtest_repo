SELECT 
    animal_id,
    name,
    CASE
        WHEN sex_upon_intake = 'Intact Male' THEN 'X'
        WHEN sex_upon_intake = 'Intact Female' THEN 'X'
        ELSE 'O'
    END AS 중성화
FROM
    animal_ins