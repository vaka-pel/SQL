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
		
FROM    Teachers, TeachersDisciplinesRelation, Disciplines
WHERE	discipline = discipline_id
AND		teacher = teacher_id
GROUP BY  discipline_name
;

SELECT
		  [Преподаватель]		  =	FORMATMESSAGE(N'%s%s%s',last_name, first_name, middle_name)	
		  ,[Количество дисциплин] = COUNT(discipline_id)
		 		
FROM    Teachers, TeachersDisciplinesRelation, Disciplines
WHERE	teacher = teacher_id
AND		discipline = discipline_id
GROUP BY  last_name, first_name, middle_name 
;

SELECT
		  [Преподаватель]		  =	FORMATMESSAGE(N'%s%s%s',last_name, first_name, middle_name)	
		  ,[дисциплина] = (discipline_name)
		 		
FROM    Teachers, TeachersDisciplinesRelation, Disciplines
WHERE	teacher = teacher_id
AND		discipline = discipline_id

;