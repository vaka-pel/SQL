USE PV_521_Import;


SET DATEFIRST 1;

--EXEC  sp_SelectScheduleFor N'PV_521'
--PRINT dbo.GetNextLearningDay(N'PV_521');
EXEC  sp_SelectScheduleFor N'PV_319'
PRINT dbo.GetNextLearningDay(N'PV_319');
--EXEC  sp_SelectScheduleFor N'PV_326'
--PRINT dbo.GetNextLearningDay(N'PV_326');
