1.
-- Create astudenttable to store name, age and score of students.
CREATE TABLE student(
  name VARCHAR(200),
  age INTEGER,
  score INTEGER
);

-- 2.
-- In a typical e-commerce application, we need to store the following customer details. Create acustomertable to store the data.

-- details	datatype
-- customer_id	integer
-- first_name	string of max length 200
-- last_name	string of max length 200
-- date_of_birth	date
-- address	text
-- phone_number	integer
CREATE TABLE customer(
  customer_id int,
  first_name varchar(200),
  last_name varchar(200),
  date_of_birth date,
  address text,
  phone_number int
);

-- 3.
-- We need to store the details of orders in an e-commerce application. Create anorder_detailstable to store the following details.

-- details	datatype
-- order_id	integer
-- customer_id	integer
-- order_datetime	datetime
-- shipped_datetime	datetime
-- total_amount	float
CREATE TABLE order_details(
  order_id int,
  customer_id int,
  order_datetime datetime,
  shipped_datetime datetime,
  total_amount float
);

-- 4.
-- We're storing the details of players who are a part of a tournament. The database contains aplayertable that stores the name, age and score of players.

-- We have to add a new player to theplayertable.

-- details	value
-- name	Ram
-- age	28
-- score	30
INSERT INTO
  player(name, age, score)
VALUES
  ("Ram", 28, 30);

-- 5.
-- The database contains aplayertable that stores the name, age and score of players.

-- Get all the players from theplayertable in the following format.

-- Expected Output Format:

-- name	age	score
-- Suresh	21	70
-- Venkat	21	43
-- ---	---	---
SELECT
  *
FROM
  player;

-- 6.
-- Get all the details of "Suresh" from theplayertable in the following format.

-- Expected Output Format:

-- name	age	score
-- Suresh	21	70
SELECT
  *
FROM
  player
WHERE
  name LIKE 'suresh';

coding pratice -2

-- 1.
-- A new player has joined the tournament. Write an SQL query to add the the following details to the player table.

-- name	age	score
-- Raj	26	120
INSERT INTO
  player (name, age, score)
VALUES
  ("Raj", 26, 120);

-- 2.
-- Three new players have joined the tournament.
-- Write a SQL query to add the the following details of players to theplayertable.

-- name	age	score
-- Ram	28	125
-- Charan	25	173
-- Ravan	20	152  
INSERT INTO
  player(name, age, score)
VALUES
  ("Ram", 28, 125),
  ("Charan", 25, 173),
  ("Ravan", 20, 152);

-- 3.
-- Get all the details of the players from the player table.

-- Expected Output Format:

-- name	age	score
-- Ram	24	10
-- Suresh	21	9
-- ---	---	---  
SELECT
  *
FROM
  player;

-- 4.
-- Update the age of "Shyam" to 30 in the player table.
-- Note: In this table, we can identify a player by name.
UPDATE
  player
SET
  age = 30
WHERE
  name = "Shyam";

-- 5.
-- Delete player "David" from the player table.
-- Note: In this table, we can identify a player by name. 
DELETE FROM
  player
WHERE
  name = "David";

-- 6.
-- We have to store thestrike_rateof players in the database. Make necessary changes to the existing player table to store the data.
-- Note: Name the column as strike_rate. It is measured in decimals.
ALTER TABLE
  player
ADD
  strike_rate float;

-- 7.
-- Getnameandageof all the players from the player table.
SELECT
  name,
  age
FROM
  player;

-- 8.
-- Rename the columnnametofull_namein the player table
ALTER TABLE
  player RENAME COLUMN name TO full_name;

-- 9.
-- Deleteplayertable from the database.  
DROP TABLE player;

coding pratice 3 --
-- 1.
-- Get all the products from "Roadster", "Levi's" or "Puma" brands.

-- Note:  Output must contain rows in the ascending order of price of the product. If two products are of same price, then sort by name in the alphabetical order.
SELECT
  *
FROM
  product
WHERE
  brand IN ("Roadster", "Levi's", "Puma")
ORDER BY
  price ASC,
  name ASC;

-- 2.
-- Get all the products that are in the price range of 750 to 1000.

-- Note: 

-- Include the products with price 750 and 1000 as well.
-- Output must contain rows in the ascending order ofpriceof the product. If two products are of same price, then sort bynamein the alphabetical order.
SELECT
  *
FROM
  product
WHERE
  price BETWEEN 750
  AND 1000
ORDER BY
  price ASC,
  name ASC;

-- 3.
-- User wants to purchase clothes that have high-rating and low-cost.
-- Get the products from the "Clothing" category as per the user requirements, i.e.,

-- Keep highly-rated products at the top
-- Sort the price from low to high
SELECT
  *
FROM
  product
WHERE
  category = "Clothing"
ORDER BY
  rating DESC,
  price ASC;

-- 4.
-- List all the distinct brands available.

-- Note: Output must contain rows in the alphabetical order of name of the brand.

-- Expected Output Format:
-- brand
-- ...  
SELECT
  DISTINCT brand
FROM
  product
ORDER BY
  brand;

-- 5.
-- User has checked first 10 products keeping highly-rated products at the top. Help the user check the details of next 10 products.

-- Note: If two products have the same rating, then sort bynamein the alphabetical order.
SELECT
  *
FROM
  product
ORDER BY
  rating DESC,
  name ASC
LIMIT
  10 OFFSET 10;

-- 6.
-- Get all the details of the products from producttable whose

-- brand is Puma or Denim and
-- rating greater than 4
-- Get products with lowest price first  
SELECT
  *
FROM
  product
WHERE
  brand IN ("Puma", "Denim")
  AND rating > 4
ORDER BY
  price ASC;

coding --
-- 1.
-- Get the total score of each player.

-- Note: Output must contain rows in the descending order oftotal_score

-- Expected Output Format :
-- name	total_score
-- ...	...  
SELECT
  name,
  sum(score) AS total_score
FROM
  player_match_details
GROUP BY
  name
ORDER BY
  total_score DESC;

-- 2.
-- Get the number of half centuries scored by each player.

-- Note: Output must contain rows in the descending order ofhalf_centuries

-- Expected Output Format :
-- name	half_centuries
-- ...	...
SELECT
  name,
  count(score) AS half_centuries
FROM
  player_match_details
WHERE
  score >= 50
GROUP BY
  name
ORDER BY
  half_centuries DESC;

-- 3.
-- Get the total number of 4's hit by each player asno_of_fours.

-- Note: Output must contain rows in the descending order ofno_of_fours

-- Expected Output Format :
-- name	no_of_fours
-- ...	...
SELECT
  name,
  sum(fours) AS no_of_fours
FROM
  player_match_details
GROUP BY
  name
ORDER BY
  no_of_fours DESC;

-- 4.
-- Get the highest score of every player asmax_score.

-- Note: Output must contain rows in the descending order ofmax_scoreof the player.

-- Expected Output Format :
-- name	max_score
-- ...	...
SELECT
  name,
  max(score) AS max_score
FROM
  player_match_details
GROUP BY
  name
ORDER BY
  max_score DESC;

-- 5.
-- Get playernameand the total number of matches played asno_of_matchesby each player in the year 2012.

-- Note: Output must contain rows in the descending order ofno_of_matchesof each player.

-- Expected Output Format :
-- name	no_of_matches
-- ...	...
SELECT
  name,
  count(MATCH) AS no_of_matches
FROM
  player_match_details
WHERE
  year = 2012
GROUP BY
  name
ORDER BY
  no_of_matches DESC;

-- 6.
-- Get the year-wise performance, i.e., no_of_matchesand runs_scoredby each player.

-- Note: Output must contain rows in the ascending order ofname&year

-- Expected Output Format :
-- name	year	no_of_matches	runs_scored
-- ...	...	...	.
SELECT
  name,
  year,
  count(MATCH) AS no_of_matches,
  sum(score) AS runs_scored
FROM
  player_match_details
GROUP BY
  name,
  year
ORDER BY
  name ASC,
  year ASC;

-- 7.
-- Get the details of all players whose average score is greater than 50 , along with the number of sixes they have scored.

-- Note: Output must contain rows in the ascending order ofnameof the player.

-- Expected Output Format :
-- name	avg_score	total_sixes
-- ...	...	...
SELECT
  name,
  avg(score) AS avg_score,
  sum(sixes) AS total_sixes
FROM
  player_match_details
GROUP BY
  name
HAVING
  avg_score > 50
ORDER BY
  name ASC;

-- 8.
-- Get the player wise total number of matches where the players scored more than 50 and in at least 2 matches.

-- Note: Output must contain rows in the ascending order ofnameof the player.

-- Expected Output Format :
-- name	no_of_matches
-- ...	...
SELECT
  name,
  count(MATCH) AS no_of_matches
FROM
  player_match_details
WHERE
  score > 50
GROUP BY
  name
HAVING
  no_of_matches >= 2
ORDER BY
  name ASC;

-- #DATALEMUER --questions answers
-- This is the same question as problem #6 in the SQL Chapter of Ace the Data Science Interview!

-- Assume you're given a table Twitter tweet data, write a query to obtain a histogram of tweets posted per user in 2022. Output the tweet count per user as the bucket and the number of Twitter users who fall into that bucket.

-- In other words, group the users by the number of tweets they posted in 2022 and count the number of users in each group.

-- tweets Table:
-- Column Name	Type
-- tweet_id	integer
-- user_id	integer
-- msg	string
-- tweet_date	timestamp
-- tweets Example Input:
-- tweet_id	user_id	msg	tweet_date
-- 214252	111	Am considering taking Tesla private at $420. Funding secured.	12/30/2021 00:00:00
-- 739252	111	Despite the constant negative press covfefe	01/01/2022 00:00:00
-- 846402	111	Following @NickSinghTech on Twitter changed my life!	02/14/2022 00:00:00
-- 241425	254	If the salary is so competitive why won’t you tell me what it is?	03/01/2022 00:00:00
-- 231574	148	I no longer have a manager. I can't be managed	03/23/2022 00:00:00
-- Example Output:
-- tweet_bucket	users_num
-- 1	2
-- 2	1
select count(tweet_id) as tweet_bucket,user_id as users_num
from tweets
where year(tweet_date) = 2022
group by user_id;

-- Given a table of candidates and their skills, you're tasked with finding the candidates best suited for an open Data Science job. You want to find candidates who are proficient in Python, Tableau, and PostgreSQL.

-- Write a query to list the candidates who possess all of the required skills for the job. Sort the output by candidate ID in ascending order.

-- Assumption:

-- There are no duplicates in the candidates table.
-- candidates Table:
-- Column Name	Type
-- candidate_id	integer
-- skill	varchar
-- candidates Example Input:
-- candidate_id	skill
-- 123	Python
-- 123	Tableau
-- 123	PostgreSQL
-- 234	R
-- 234	PowerBI
-- 234	SQL Server
-- 345	Python
-- 345	Tableau
-- Example Output:
-- candidate_id
-- 123
select candidate_id
from candidates
where skill in ('Python','Tableau','PostgreSQL')
group by candidate_id
having count(skill) = 3
order by candidate_id;


-- #learnSql

-- Show first name, last name, and gender of patients whose gender is 'M'
SELECT first_name,last_name,gender
from patients
where gender ='M';

-- Show first name and last name of patients who does not have allergies. (null)
SELECT first_name,last_name
from patients
where allergies is null;

-- Show first name of patients that start with the letter 'C'
SELECT first_name
from patients
where first_name like 'C%';

-- Show first name and last name of patients that weight within the range of 100 to 120 (inclusive)
SELECT first_name,last_name
from patients
where weight  between 100 and 120;

-- Update the patients table for the allergies column. If the patient's allergies is null then replace it with 'NKA'
update patients
set allergies = 'NKA'
where allergies is null

-- Show first name and last name concatinated into one column to show their full name.
select
concat(first_name,' ', last_name) as full_name
from patients;

-- Show first name, last name, and the full province name of each patient.

-- Example: 'Ontario' instead of 'ON'

SELECT first_name,last_name,province_name
from patients
join province_names on province_names.province_id = patients.province_id;


-- Show how many patients have a birth_date with 2010 as the birth year.
select count(*)
from patients
where year(birth_date)= 2010;

-- Show the first_name, last_name, and height of the patient with the greatest height.
select first_name,last_name,height
from patients
where height = (select max(height) from patients);

-- Show all columns for patients who have one of the following patient_ids:
-- 1,45,534,879,1000
SELECT *
from patients
where patient_id in (1,45,534,879,1000);


-- Show the total number of admissions
select count(*) 
from admissions

-- Show all the columns from admissions where the patient was admitted and discharged on the same day.
select * from admissions
where admission_date = discharge_date;


-- Show the patient id and the total number of admissions for patient_id 579.
select patient_id,
count(admission_date) as total_admissions
from admissions
where patient_id = 579;

-- Based on the cities that our patients live in, show unique cities that are in province_id 'NS'.
select distinct city 
from patients
where province_id = 'NS';

-- Write a query to find the first_name, last name and birth date of patients who has height greater than 160 and weight greater than 70
select first_name,last_name,birth_date
from patients
where height > 160 and weight > 70;

-- Write a query to find list of patients first_name, last_name, and allergies where allergies are not null and are from the city of 'Hamilton'
select first_name,last_name,allergies
from patients
where allergies is not null and city = 'Hamilton';

-- Show unique birth years from patients and order them by ascending.
select distinct year(birth_date) as birth_year 
from patients
order by birth_date  asc;

-- Show unique first names from the patients table which only occurs once in the list.

-- For example, if two or more people are named 'John' in the first_name column then don't include their name in the output list. If only 1 person is named 'Leo' then include them in the output.
select first_name
from patients
group by first_name 
having count (first_name)=1;

-- Show patient_id and first_name from patients where their first_name start and ends with 's' and is at least 6 characters long.
select patient_id,first_name
from patients
where first_name  like 's%' 
and first_name like '%s' and
length(first_name) >= 6;

-- Show patient_id, first_name, last_name from patients whos diagnosis is 'Dementia'.

-- Primary diagnosis is stored in the admissions table.
select patients.patient_id,
patients.first_name,patients.last_name
from patients
join admissions on patients.patient_id = admissions.patient_id
where diagnosis = 'Dementia';

-- Display every patient's first_name.
-- Order the list by the length of each name and then by alphabetically.
select first_name
from patients
order by len(first_name),
first_name;

-- Show the total amount of male patients and the total amount of female patients in the patients table.
-- Display the two results in the same row.
select 
sum(case when gender = 'M' then 1 end ) as male_counts,
sum(case when gender = 'F' then 1 end) as female_counts
from patients;

-- Show first and last name, allergies from patients which have allergies to either 'Penicillin' or 'Morphine'. Show results ordered ascending by allergies then by first_name then by last_name.
select first_name,last_name,allergies
from patients
where  allergies = 'Penicillin' or allergies ='Morphine'
order by allergies,first_name,last_name asc;

-- Show patient_id, diagnosis from admissions. Find patients admitted multiple times for the same diagnosis.
select patient_id,diagnosis
from admissions
group by patient_id,diagnosis
having count(*)>1;

-- Show the city and the total number of patients in the city.
-- Order from most to least patients and then by city name ascending.
select city,
count(*) as num_patients
from patients
group by city
order by num_patients desc,city asc;

-- Show all allergies ordered by popularity. Remove NULL values from query.
select allergies,
count(*) as total_diagnosis
from patients
where allergies is not null
group by allergies
order by total_diagnosis desc ;

-- Show the province_id(s), sum of height; where the total sum of its patient's height is greater than or equal to 7,000.
select province_id, 
sum(height) as sum_of_height
from patients
group by province_id
having sum_of_height >= 7000;

-- Show all of the days of the month (1-31) and how many admission_dates occurred on that day. Sort by the day with most admissions to least admissions.
select day(admission_date) as day_number,
count(*) as admission_dates
from admissions
group by day_number
order by admission_dates desc;

-- Show all columns for patient_id 542's most recent admission_date.
select patient_id,admission_date,discharge_date,diagnosis,attending_doctor_id
from admissions
where patient_id = 542
group by patient_id
having admission_date 
 = max(admission_date);

--  Show first_name, last_name, and the total number of admissions attended for each doctor.

-- Every admission has been attended by a doctor.
select first_name,last_name,count(*) as total_numberof_admissions
from admissions a
join doctors ph on ph.doctor_id = a.attending_doctor_id
group by attending_doctor_id;
