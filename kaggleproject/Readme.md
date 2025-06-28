# Data Analysis with SQL
Here for this project i have taken the data set from the kaggle with the title Fitbit Data for Bellabeat Case Study. It came from fitbit fitness tracker and I am trying to do exploratory analysis of the data using my favourite MYSQL.
I will be sharing each and every details of the steps i took and the thought process before doing those analysis. 

## ✅ Project Structure
1. The raw data as i imprted will be extracted and will be in data directory.
2. All the queries i have applied to those data will be in the queries directory. 

## 🗃️ Data Source
The data set is downloaded from Kaggle. [Link](https://www.kaggle.com/datasets/arashnic/fitbit/data)

## Findings
The data set have 4 files, 
    a. dailyActivity_merged (for tracking down the daily activity of users including steps, sedentary minutes and calories burned)
    b. heartrate_seconds_merged(tracking the heart rate per second)
    c. hourlyintensities_merged(intensity of work based of hour)
    d. sleepDay_merged(total number of sleeps, total minutes of sleep and the Total time in bed)

## 🧪 Process
### Tools:
For the analysis of this data i have used excel and MYSQL for now as i want this project solely focus on my MySQL skills.

## ⌚ Getting Started
I started by downloading the csv files and now it's time to load those data in the database. 
I have my MYSQL DATABASE running in my local computer and the csv files in data directory and the queries in the queries directory.

To create a database and the tables i have used `queries\databaseandtablecreation.sql`

Now it is time to populate the tables with the csv data files. 
 ### challenge-I 
 while loading the data with the LOAD DATA INFILE method in mysql the data has to be in the proper folder allocated by mysql so to find that we have to find the secure_file_priv however for shortcut i have moved the csv files into `c:/xampp/mysql` so i can access easily from the mysql server. And viola i have populated the table now i can go and delete those files from programData folder. 


## check if the data are loaded as expected
✅ The data are loaded as expected and good thing about this data is that there are no null values so one step to clean the dataset is gone. 
Let's explore:
💡 while i was going through the sleep table i found that the user has slept 1😴 2😴😴 and 3😴😴😴 times. 
Let's find how many times user has slept 3 times, 2 times and 1 time and find the percentage.