USE PV_521_Import;

SET DATEFIRST 1;
--DELETE FROM Schedule WHERE [group]=521 AND [date] >= N'2026-03-18';
--DELETE	FROM Schedule WHERE discipline=(SELECT discipline_id FROM Disciplines WHERE discipline_name LIKE N'Сетевое%');
--EXEC sp_InsertScheduleStacionar N'PV_521', N'%ADO.NET', N'Олег', N'2026-01-21';
--EXEC sp_InsertScheduleStacionar N'PV_521', N'Сетевое%', N'Олег', N'2026-02-18';
EXEC sp_SelectScheduleFor N'PV_521';
--PRINT dbo.GetNextLearningDay(N'PV_521',DEFAULT);
--PRINT dbo.GetNaxtLearningDay(N'PV_521',N'2026-03-04');
PRINT dbo.GetNextLearningDay(N'PV_521', N'2026-03-05');
PRINT dbo.GetNextLearningDate(N'SPU_411', N'2026-03-07');
PRINT dbo.GetNextLearningDate(N'VPU_311', N'2026-03-08');
