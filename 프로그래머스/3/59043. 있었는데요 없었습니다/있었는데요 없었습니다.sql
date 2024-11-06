SELECT i.animal_id,
       i.name FROM animal_ins as i
INNER JOIN animal_outs as o 
      ON i.animal_id = o.animal_id
WHERE i.datetime > o.datetime
ORDER BY i.datetime;