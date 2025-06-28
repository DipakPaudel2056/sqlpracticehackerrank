-- select the files to be uploaded to the database
--  select the tables to be populated 
-- populate the table using 
LOAD DATA INFILE '../dailyActivity_merged.csv'
INTO TABLE dailyactivity
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE '../heartrate_seconds_merged.csv'
INTO TABLE heartrate
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE '../hourlyIntensities_merged.csv'
INTO TABLE hourlyintensities
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE '../sleepDay_merged.csv'
INTO TABLE sleepday
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;