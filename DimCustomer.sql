SELECT 
  [CustomerKey]
  --,[GeographyKey]
  --,[CustomerAlternateKey]
  --,[Title]
  , 
  [FirstName] --,[MiddleName]
  , [LastName], 
  [FirstName] + ' ' + [LastName] AS FullName 
  --,[NameStyle]
  --,[BirthDate]
  --,[MaritalStatus]
  --,[Suffix]
  , 
  CASE c.Gender when 'M' then 'Male' when 'F' then 'Female' END AS Gender
  --,[EmailAddress]
  --,[YearlyIncome]
  --,[TotalChildren]
  -- ,[NumberChildrenAtHome]
  , 
  --[EnglishEducation]
  --,[SpanishEducation]
  --,[FrenchEducation]
  --,[EnglishOccupation]
  --,[SpanishOccupation]
  --,[FrenchOccupation]
  --,[HouseOwnerFlag]
  --,[NumberCarsOwned]
  --,[AddressLine1]
  --,[AddressLine2]
  --,[Phone]
  [DateFirstPurchase]
  --,[CommuteDistance]
  , g.City --join DimGeography to get the city
FROM 
  [AdventureWorksDW2019].[dbo].[DimCustomer] c 
  join [AdventureWorksDW2019].[dbo].[DimGeography] g on g.GeographyKey = c.GeographyKey 
order by 
  CustomerKey asc --order list by CustomerKey
