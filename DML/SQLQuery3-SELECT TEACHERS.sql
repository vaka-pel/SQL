USE PV_521_Import

--SELECT
--		 [Преподаватель]		=	FORMATMESSAGE(N'%s%s%s',last_name, first_name, middle_name)
--		,[Дата рождения]		=	birth_date
--		,[Возраст]				=	CAST(DATEDIFF(DAY, birth_date, GETDATE())/365.25 AS TINYINT)

--FROM Teachers
--WHERE		CAST(DATEDIFF(DAY, birth_date, GETDATE())/365.25 AS TINYINT) BETWEEN 38 AND 44
--ORDER BY	[возраст]	ASC
----ASC - Ascinding (По возрастанию)
----DESC - Descending (По убыванию)

SELECT
		
		  discipline_name  AS N'дисциплина'
		 ,COUNT(teacher_id) AS N'Количество преподавателей'
		
FROM  Disciplines, Teachers
GROUP BY  discipline_name
;