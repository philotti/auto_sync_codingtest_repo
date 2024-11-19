SELECT board_id,
       writer_id,
       title,
       price,
       CASE status WHEN 'DONE' then '거래완료'
       WHEN 'SALE' then '판매중'
       else '예약중' end AS status
       FROM used_goods_board
WHERE DATE(created_date) = '2022-10-05'
ORDER BY board_id DESC;