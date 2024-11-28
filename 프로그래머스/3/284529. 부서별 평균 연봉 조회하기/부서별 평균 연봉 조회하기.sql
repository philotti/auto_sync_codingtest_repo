SELECT 
    HD.dept_id,
    HD.dept_name_en,
    ROUND(AVG(HE.SAL), 0) AS avg_sal
FROM
    hr_department AS HD
        INNER JOIN
    hr_employees AS HE ON HD.dept_id = HE.dept_id
GROUP BY 1
ORDER BY 3 DESC;