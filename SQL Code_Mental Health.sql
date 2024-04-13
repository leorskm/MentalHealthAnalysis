-- Create database for the Mental Health Survey
CREATE DATABASE MentalHealthSurvey;

-- Connect to the database
\c MentalHealthSurvey

-- Creating the SurveyResponses table
CREATE TABLE SurveyResponses (
    response_id SERIAL PRIMARY KEY,
    age INT,
    gender VARCHAR(50),
    country VARCHAR(50),
    self_employed BOOLEAN,
    family_history BOOLEAN,
    treatment BOOLEAN,
    work_interfere VARCHAR(50),
    no_employees VARCHAR(50),
    remote_work BOOLEAN,
    tech_company BOOLEAN,
    benefits VARCHAR(50),
    care_options VARCHAR(50),
    wellness_program VARCHAR(50),
    seek_help VARCHAR(50),
    anonymity VARCHAR(50),
    leave VARCHAR(50),
    mental_health_consequence VARCHAR(50),
    phys_health_consequence VARCHAR(50),
    coworkers VARCHAR(50),
    supervisor VARCHAR(50),
    mental_health_interview VARCHAR(50),
    phys_health_interview VARCHAR(50),
    mental_vs_physical VARCHAR(50),
    obs_consequence BOOLEAN
);

-- Sample INSERT into the SurveyResponses table
INSERT INTO SurveyResponses (age, gender, country, self_employed, family_history, treatment, work_interfere, no_employees, remote_work, tech_company, benefits, care_options, wellness_program, seek_help, anonymity, leave, mental_health_consequence, phys_health_consequence, coworkers, supervisor, mental_health_interview, phys_health_interview, mental_vs_physical, obs_consequence)
VALUES (34, 'Male', 'United States', FALSE, TRUE, TRUE, 'Sometimes', '26-100', FALSE, TRUE, 'Yes', 'Not sure', 'No', 'Yes', 'Don't know', 'Somewhat easy', 'Yes', 'No', 'Some of them', 'Yes', 'No', 'Maybe', 'Yes', 'No');

-- Sample SELECT query to retrieve all records where treatment is true
SELECT * FROM SurveyResponses WHERE treatment = TRUE;

-- Create an index on the 'country' column to improve performance of queries filtering by country
CREATE INDEX idx_country ON SurveyResponses (country);

-- View for summarizing data by country
CREATE VIEW SummaryByCountry AS
SELECT country, COUNT(*) AS total_responses, AVG(age) AS average_age
FROM SurveyResponses
GROUP BY country;

-- Select data from the view
SELECT * FROM SummaryByCountry;

-- Demonstrating use of functions like AVG, COUNT
SELECT gender, AVG(age) AS average_age, COUNT(*) AS total
FROM SurveyResponses
GROUP BY gender;

-- Create the CountryInfo table
CREATE TABLE CountryInfo (
    country VARCHAR(50) PRIMARY KEY,
    region VARCHAR(100),
    population BIGINT
);

-- Insert sample data into CountryInfo
INSERT INTO CountryInfo (country, region, population) VALUES
('United States', 'North America', 331000000),
('United Kingdom', 'Europe', 67886011),
('Canada', 'North America', 37742154),
('Germany', 'Europe', 83783942);

-- Now, let's perform a JOIN operation in a SELECT statement to combine data from both tables
-- This query fetches all columns from SurveyResponses and adds the region and population for each response based on the country
SELECT sr.*, ci.region, ci.population
FROM SurveyResponses sr
INNER JOIN CountryInfo ci ON sr.country = ci.country;

-- Alternatively, to focus on specific columns:
SELECT sr.response_id, sr.age, sr.gender, sr.country, ci.region, ci.population
FROM SurveyResponses sr
INNER JOIN CountryInfo ci ON sr.country = ci.country;

