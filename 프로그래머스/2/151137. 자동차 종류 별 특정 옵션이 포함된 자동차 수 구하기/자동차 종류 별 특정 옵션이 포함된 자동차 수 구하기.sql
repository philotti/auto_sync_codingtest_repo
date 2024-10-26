SELECT car_type, 
       COUNT(car_id) AS cars 
       FROM CAR_RENTAL_COMPANY_CAR
WHERE options LIKE '%시트%'
GROUP BY car_type
ORDER BY car_type;