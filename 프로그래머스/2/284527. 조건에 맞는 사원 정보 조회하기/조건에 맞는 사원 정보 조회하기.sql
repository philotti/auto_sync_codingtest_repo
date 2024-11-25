SELECT 
    SUM(score) AS score,
    HR.emp_no,
    HE.emp_name,
    HE.position,
    HE.email
FROM
    hr_grade AS HR
        INNER JOIN
    hr_employees AS HE ON HE.emp_no = HR.emp_no
GROUP BY HR.emp_no
ORDER BY 1 DESC
LIMIT 1;