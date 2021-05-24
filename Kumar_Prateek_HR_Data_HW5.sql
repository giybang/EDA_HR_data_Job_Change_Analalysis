CREATE DATABASE HR_Data;

--- Querying Imported Dataset

USE HR_Data;

SELECT *
FROM dbo.HRdata;



--- Total Number of Records

SELECT COUNT(*) AS TotalRecords
FROM dbo.HRdata; 
-- Out: 19158



------------ *****************************************************************************
--------    Statistic for feature 'CITY'
------------ *****************************************************************************
--- Count of Unique Cities
SELECT COUNT(DISTINCT city) AS NumCities
FROM dbo.HRdata; 
--- Out: 123



--- Avg City Development Index
SELECT AVG(city_development_index) AS AvgCityDevIndex
FROM dbo.HRdata; 
--- Out: 0.8288480008351684



------------ *****************************************************************************
--------    Statistic for feature 'Gender'
------------ *****************************************************************************

--- Unique Genders
SELECT DISTINCT gender AS Genders
FROM dbo.HRdata; 
-- Out: NULL,Male,Female,Others


--- Count of Different genders
SELECT gender,  COUNT(*) AS NumRecords
FROM dbo.HRdata
GROUP BY gender;


------------ *****************************************************************************
--------    Statistic for feature 'Relevant Experience'
------------ *****************************************************************************

--- Population with relevant Experince
SELECT relevent_experience,  COUNT(*) AS NumRecords
FROM dbo.HRdata
GROUP BY relevent_experience;
--- Out: 13792


------------ *****************************************************************************
--------    Statistic for feature 'Education Level' 'Major_discipline' 
------------ *****************************************************************************

SELECT gender, education_level ,  COUNT(*) AS NumRecords
FROM dbo.HRdata
GROUP BY gender , education_level
ORDER BY gender DESC;



------------ *****************************************************************************
--------    Statistic for feature 'Education Level' 'Major_discipline' 
------------ *****************************************************************************

--Training Hours

SELECT MIN(training_hours) AS MinTrain, MAX(training_hours) AS MaxTrain, AVG(training_hours) AS AvgTrain,
        SUM(training_hours) AS SumTraining
FROM dbo.HRdata;
