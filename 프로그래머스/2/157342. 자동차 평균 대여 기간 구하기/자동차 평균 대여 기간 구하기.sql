SELECT 
    car_id,
    ROUND(AVG(DATEDIFF(end_date, start_date)) + 1, 1) AS average_duration
FROM
    car_rental_company_rental_history
GROUP BY 1
HAVING average_duration > 6
ORDER BY average_duration DESC , 1 DESC;