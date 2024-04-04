-- List all DC superhero movies with their U.S. release dates and worldwide box office gross.

SELECT Film, U_S_release_date, Box_office_gross_Worldwide
FROM dc_marvel_movie_performance
WHERE Franchise = 'DC'

-- Calculate the total box office gross worldwide for all Marvel movies.

SELECT SUM(Box_office_gross_Worldwide) AS Total_Box_Office_Worldwide
FROM dc_marvel_movie_performance
WHERE Franchise = 'Marvel'

-- Find the average length of DC superhero movies.

SELECT 
    CONVERT(VARCHAR(8), DATEADD(SECOND, AVG(DATEDIFF(SECOND, '00:00:00', length)), '00:00:00'), 108) AS average_length
FROM 
    dc_marvel_movie_performance
	WHERE Franchise = 'DC'

-- Retrieve the top 5 highest-grossing DC movies in the U.S. and Canada.

SELECT TOP(5) Film
FROM dc_marvel_movie_performance
WHERE Franchise = 'DC'
ORDER BY Box_office_gross_Domestic_U_S_and_Canada DESC

-- List all Marvel Phase 3 movies.

SELECT Film
FROM dc_marvel_movie_performance
WHERE Franchise = 'Marvel' AND Phase = '3'

-- Find the movie with the highest budget among all superhero movies.

SELECT Film, Budget
FROM dc_marvel_movie_performance
WHERE Budget = (SELECT MAX(Budget) FROM dc_marvel_movie_performance)

-- Calculate the percentage of domestic box office gross for each Marvel movie

SELECT Film, Domestic AS Domestic_Percentage_Box_Office_Gross
FROM dc_marvel_movie_performance
WHERE Franchise = 'Marvel'

-- Find the movie with the highest Rotten Tomatoes critic score.

SELECT Film, Rotten_Tomatoes_Critic_Score
FROM dc_marvel_movie_performance
WHERE Rotten_Tomatoes_Critic_Score = 
(SELECT MAX(Rotten_Tomatoes_Critic_Score) FROM dc_marvel_movie_performance)

-- List all DC movies released after 2010.

SELECT Film, Year
FROM dc_marvel_movie_performance
WHERE Franchise = 'DC' AND Year > 2010

-- Find the average gross to budget ratio for Marvel Phase 2 movies.

SELECT ROUND(AVG(Gross_to_Budget), 3) AS Avg_Gross_to_Budget_Ratio
FROM dc_marvel_movie_performance
WHERE Franchise = 'Marvel' AND Phase = '2'

-- Retrieve the top 5 highest-grossing movies for each distributor.

WITH RankedMovies AS (
    SELECT
        Film,
        Distributor,
        Box_office_gross_Worldwide,
        ROW_NUMBER() OVER (PARTITION BY Distributor ORDER BY Box_office_gross_Worldwide DESC) AS Rank
    FROM
        dc_marvel_movie_performance
)
SELECT
    Film,
    Distributor
FROM
    RankedMovies
WHERE
    Rank <= 5

-- List all movies with a budget higher than $200 million.

SELECT Film, Budget
FROM dc_marvel_movie_performance
WHERE Budget > 200000000

-- Find the average length of movies in each MPAA rating category.

SELECT 
	MPAA_Rating,
	CONVERT(VARCHAR(8), DATEADD(SECOND, AVG(DATEDIFF(SECOND, '00:00:00', length)), '00:00:00'), 108) AS average_length
	
FROM dc_marvel_movie_performance
GROUP BY MPAA_Rating

-- Calculate the total worldwide gross for each year.

SELECT
    Year,
    SUM(Box_office_gross_Worldwide) AS Total_Worldwide_Gross
FROM
    dc_marvel_movie_performance
GROUP BY
    Year

-- List all Marvel movies led by a female character.

SELECT Film
FROM dc_marvel_movie_performance
WHERE Franchise = 'Marvel' AND Male_Female_led = 'Female'

-- Find the movie with the highest inflation-adjusted worldwide gross.

SELECT Film, Inflation_Adjusted_Worldwide_Gross
FROM dc_marvel_movie_performance
WHERE Inflation_Adjusted_Worldwide_Gross = 
	(SELECT MAX(Inflation_Adjusted_Worldwide_Gross) FROM dc_marvel_movie_performance)

-- Retrieve the top 3 movies with the highest ROI (Return on Investment).

SELECT TOP(3) Film, ((Box_office_gross_Worldwide - Budget)/NULLIF(Budget, 0)) AS ROI
FROM dc_marvel_movie_performance
ORDER BY  ROI DESC

-- List all Marvel Phase 1 movies with their budgets and lengths.

SELECT Film, Budget, Length 
FROM dc_marvel_movie_performance
WHERE Franchise = 'Marvel' AND Phase = '1'

-- Find the distribution of MPAA ratings for DC movies.

SELECT MPAA_Rating, COUNT(*) AS Distribution
FROM dc_marvel_movie_performance
WHERE Franchise = 'DC'
GROUP BY MPAA_Rating
ORDER BY Distribution DESC

-- Calculate the average inflation-adjusted budget for DC Phase 2 movies.

SELECT AVG(Inflation_Adjusted_Budget) AS AVG_Inflation_adjusted_Budget
FROM dc_marvel_movie_performance
WHERE Franchise = 'DC' AND Phase = '2'

-- Retrieve the oldest DC movie in the dataset.

SELECT Film, U_S_release_date
FROM dc_marvel_movie_performance
WHERE Franchise = 'DC'
ORDER BY Year ASC

-- Find the movie with the highest box office gross in other territories.

SELECT TOP(1) Film, Box_office_gross_Other_territories
FROM dc_marvel_movie_performance
ORDER BY Box_office_gross_Other_territories DESC

-- Calculate the total box office gross for each franchise.

SELECT Franchise , SUM(Box_office_gross_Worldwide) AS Total_Box_Office_Gross
FROM dc_marvel_movie_performance
GROUP BY Franchise
ORDER BY Total_Box_Office_Gross DESC

-- Retrieve the top 3 movies with the lowest Rotten Tomatoes critic scores.

SELECT TOP(3) Film, Rotten_Tomatoes_Critic_Score
FROM dc_marvel_movie_performance
ORDER BY Rotten_Tomatoes_Critic_Score ASC

-- List all movies released before 2000.

SELECT Film, Year
FROM dc_marvel_movie_performance
WHERE Year < 2000

-- Find the average length of movies for each character family.

SELECT 
	Character_Family,
    CONVERT(VARCHAR(8), DATEADD(SECOND, AVG(DATEDIFF(SECOND, '00:00:00', length)), '00:00:00'), 108) AS average_length
FROM dc_marvel_movie_performance 
GROUP BY Character_Family

-- Calculate the percentage of movies with a budget higher than $100 million.

SELECT
    ROUND((CAST(SUM(CASE WHEN Budget > 100000000 THEN 1 ELSE 0 END) AS FLOAT) / COUNT(*)) * 100, 3) AS Percentage_Of_Movies_over_100M
FROM
    dc_marvel_movie_performance

-- Retrieve the top 3 highest-grossing movies with a PG-13 rating.

SELECT TOP(3) Film, MPAA_Rating, Box_office_gross_Worldwide
FROM dc_marvel_movie_performance
WHERE MPAA_Rating = 'PG-13'
ORDER BY Box_office_gross_Worldwide DESC

-- List all movies with a break-even point less than 2.5x their budget.

SELECT Film, Break_Even
FROM dc_marvel_movie_performance
WHERE Box_office_gross_Worldwide < _2_5x_prod


    

	


