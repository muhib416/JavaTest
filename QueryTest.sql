SELECT ID, 
	   UserName,
	   CASE WHEN Parent > 0
			THEN (SELECT UserName FROM USER U WHERE U.ID = ID)
			ELSE NULL
	   END AS ParentUserName
FROM USER