-- creating a fitbit database
CREATE DATABASE FITBITDATABASE;
use fitbitdatabase;
-- creating tables for daily activity csv file
CREATE TABLE
    dailyactivity (
        id int,
        activitydate varchar(255),
        totalsteps int,
        totaldistance float,
        trackerdistance float,
        loggedactivitiesdistance float,
        veryactivedistance float,
        moderatelyactivedistance float,
        LightActiveDistance float,
        SedentaryActiveDistance float,
        VeryActiveMinutes int,
        FairlyActiveMinutes int,
        LightlyActiveMinutes int,
        SedentaryMinutes int,
        Calories int
    );

CREATE TABLE
    hourlyintensities (
        id int,
        activityhour varchar(255),
        totalintensity integer,
        avergeintensity float
    );

CREATE TABLE
    sleepday (
        id int,
        sleepday varchar(255),
        totalsleeprecords int,
        totalminutesasleep int,
        totaltimeinbed int
    );

CREATE TABLE
    heartrate (id int, time varchar(255), value int);
    
select * from dailyactivity;