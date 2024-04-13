## Mental Health Database Editing using SQL

### Project Description
**Objective**: The primary objective of this project is to demonstrate the ability to perform fundamental SQL operations, including creating and manipulating data within a relational database. 

### Data Description
**SurveyResponses Table**:
- This table contains survey data from individuals regarding their mental health. Each record represents a single participant's responses.
- **Fields**:
  - `response_id`: An auto-generated unique identifier for each survey response.
  - `age`: The respondent's age.
  - `gender`: The respondent's gender.
  - `country`: The respondent's country of residence.
  - `self_employed`: Indicates if the respondent is self-employed.
  - `family_history`: Indicates if there is a family history of mental health issues.
  - `treatment`: Indicates if the respondent is receiving treatment for a mental health condition.
  - Additional fields capture data on work environment, mental health consequences, and attitudes towards mental health.

**CountryInfo Table**:
- This table provides additional information about each country represented in the survey responses.
- **Fields**:
  - `country`: The name of the country, serving as a primary key.
  - `region`: The geographical region of the country.
  - `population`: The population of the country.

### Tasks Performed
#### SQL Tasks
1. **Database and Table Creation**:
   - Created a database named `MentalHealthSurvey`.
   - Defined and created two tables: `SurveyResponses` and `CountryInfo` using SQL `CREATE TABLE` commands.

2. **Data Insertion**:
   - Inserted sample data into both tables using SQL `INSERT INTO` commands to populate the tables with initial data for querying.

3. **Data Manipulation and Querying**:
   - Performed basic data manipulation tasks including updating and deleting records.
   - Executed various SQL queries to retrieve specific subsets of data, such as filtering respondents by country or age, and calculating aggregate statistics like average age.

4. **Join Operations**:
   - Used SQL joins (INNER JOIN) to merge data from `SurveyResponses` and `CountryInfo`, allowing for enriched analysis by including country-specific details like region and population.

5. **Indexing**:
   - Created an index on the `country` column of the `SurveyResponses` table to improve the performance of queries involving country-specific data.

6. **View Creation**:
   - Created a view `SummaryByCountry` to simplify access to aggregated data such as the total number of responses and average age per country.


These tasks collectively showcase foundational SQL operations for data analysis, aimed at providing insightful observations into mental health trends across different demographics and countries. This project serves as a practical example of leveraging SQL skills in a data analysis context. Please find the SQL code and the original dataset attached. 
