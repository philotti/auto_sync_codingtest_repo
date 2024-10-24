SELECT MEMBER_ID, 
       MEMBER_NAME, 
       GENDER,
       date_format(DATE_OF_BIRTH, '%Y-%m-%d') AS DATE_OF_FORMAT
       FROM MEMBER_PROFILE
WHERE GENDER = 'W' and 
      MONTH(DATE_OF_BIRTH) = 3 and
      TLNO IS NOT NULL;