--DROP TABLE RankedSchoolsWithCounty;
--DROP TABLE SchoolCounty;
--DROP TABLE SchoolCases;
--DROP TABLE CountyStatePopulation;
--DROP TABLE CovidCountyTestData_7_28_20;


CREATE TABLE RankedSchoolsWithCounty (
RankedSchoolsID int,
Rank int,
College_Name VARCHAR (255) PRIMARY KEY,
address VARCHAR (255),
Number_of_Full_Time_Undergraduates int,
Niche_Overall_Grade VARCHAR (255),
Location VARCHAR (255),
Acceptance_Rate int,
niche_url VARCHAR (255),
county VARCHAR (255)
);
  

CREATE TABLE SchoolCounty (
county_state VARCHAR (255) PRIMARY KEY,
College_Name VARCHAR (255) REFERENCES RankedSchoolsWithCounty(College_Name),
Location VARCHAR (255),
county VARCHAR (255),
state VARCHAR (255)
); 


CREATE TABLE SchoolCases (
SchoolID int,
College_Name VARCHAR (255) REFERENCES RankedSchoolsWithCounty(College_Name),
cases int	
);
	

CREATE TABLE CountyStatePopulation (
CountyStateID int PRIMARY KEY,
county VARCHAR (255),
state VARCHAR (255),
population_2019 int,
county_state VARCHAR (255) REFERENCES SchoolCounty(county_state)
);


CREATE TABLE CovidCountyTestData_7_28_20 (
county_state VARCHAR (255) REFERENCES SchoolCounty(county_state),	
state VARCHAR (255),
county VARCHAR (255),
name VARCHAR (255),
date date,
fips int,
lat int,
long int,	
confirmed int,	
deaths int,
confirmed_diff int,	
deaths_diff int,
last_update time
);


SELECT * FROM RankedSchoolsWithCounty;
SELECT * FROM SchoolCounty;
SELECT * FROM SchoolCases;
SELECT * FROM CountyStatePopulation;
SELECT * FROM CovidCountyTestData_7_28_20;

