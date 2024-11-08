SELECT I.rest_id, 
       I.rest_name, 
       I.food_type, 
       I.favorites, 
       I.address, 
       ROUND(AVG(review_score),2) AS score
       FROM rest_info as I
INNER JOIN rest_review as R ON I.rest_id = R.rest_id
WHERE I.address LIKE '서울%'
group by I.rest_id
ORDER BY score DESC, I.favorites DESC;