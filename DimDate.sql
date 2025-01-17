SELECT 
  [DateKey], 
  [FullDateAlternateKey] AS Date
  --,[DayNumberOfWeek]
  ,[EnglishDayNameOfWeek] AS Day 
  --,[SpanishDayNameOfWeek]
  --,[FrenchDayNameOfWeek]
  --,[DayNumberOfMonth]
  --,[DayNumberOfYear]
  ,[WeekNumberOfYear] AS WeekNo, 
  [EnglishMonthName] AS Month, 
  Left([EnglishMonthName], 3) AS MonthShort 
  --,[SpanishMonthName]
  --,[FrenchMonthName]
  ,[MonthNumberOfYear] AS MonthNo, 
  [CalendarQuarter] AS Quarter, 
  [CalendarYear] AS Year 
  --,[CalendarSemester]
  --,[FiscalQuarter]
  --,[FiscalYear]
  --,[FiscalSemester]
FROM 
  [AdventureWorksDW2019].[dbo].[DimDate] 
where 
  [CalendarYear] between 2019 and 2021
