# SQL Project - Data Analysis
## Box office performance of DC and Marvel superhero movies
![](./image/preview.jpg)

### Tools:
+ SQL
+ SQL Server (Database)
+ SSMS (SQL Server Management Studio)
+ MS Excel
+ Git & Github
+ VS Code Editor

### About Dataset:
The dataset comprises box office data and supplemental information for all theatrically released films adapted from Marvel Comics and DC Comics core superhero universes. TV specials and other projects that did not receive a wide theatrical release are not included.

#### Available Column and its Explanation:

+ **Film** - The film's title in the U.S.
+ **U.S. release date** - The first day it premiered in the U.S.	 
+ **Box office gross Domestic (U.S. and Canada)** -  Total earnings in the U.S. and Canada	 
+ **Box office gross Other territories** - Total earnings outside the U.S. and Canada	 
+ **Box office gross Worldwide** - Total earnings globally	 
+ **Budget** - Production cost	
+ **MCU** - Indicates if the film is part of the Marvel Cinematic Universe
+ **Phase**	- Denotes the phase of the MCU the film belongs to
+ **Distributor** - The studio distributing the film in the U.S.	
+ **MPAA Rating** - Age rating by the Motion Picture Association. The current available classifications from the MPA are:
    + G (General Audiences)
    + PG (Parental Guidance Suggested)
    + PG-13 (Parents Strongly Cautioned)
    + R (Restricted)
    + NC-17 (No on 17 and under admitted)
+ **Length** - Duration of the U.S. theatrical cut
+ **Minutes** - Same as above but presented only in minutes	
+ **Franchise	Character Family** - Grouping based on the film's main characters	
+ **Domestic%** - Percentage of worldwide gross from U.S. and Canada	
+ **Gross to Budget** - Ratio of worldwide gross to budget.	
+ **Rotten Tomatoes Critic Score** - Average score from professional critics on Rotten Tomatoes	
+ **Male/Female-led** - Gender of the film's lead.	
+ **Year** - Theatrical release year in the U.S.	 
+ **Inflation Adjusted Worldwide Gross** - Total earnings adjusted for inflation	 
+ **Inflation Adjusted Budget** - Production budget adjusted for inflation	 
+ **2.5x prod** - Production budget multiplied by 2.5	
+ **Break Even** - Indicates if the film reached profitability based on the 2.5x rule

[Read more](https://www.kaggle.com/datasets/mdtoomey/box-office-of-dc-and-marvel-superhero-movies) for detailed explanation. 

[click here](./dc_marvel_movie_performance.csv) to show the dataset and download it to use.

> Original data source is Kaggle. [Click here](https://www.kaggle.com/datasets/mdtoomey/box-office-of-dc-and-marvel-superhero-movies/download?datasetVersionNumber=1) to download.

### Questions for analysis to measure Box-Office performance: 
1. List all DC superhero movies with their U.S. release dates and worldwide box office gross.
<p align="center">
<img src="./Output/1.png" alt="output1">
</p>
2. Calculate the total box office gross worldwide for all Marvel movies.
<p align="center">
<img src="./Output/2.png" alt="output2">
</p>
3. Find the average length of DC superhero movies.<p align="center">
<img src="./Output/3.png" alt="output3">
</p>
4. Retrieve the top 5 highest-grossing DC movies in the U.S. and Canada.<p align="center">
<img src="./Output/4.png" alt="output4">
</p>
5. List all Marvel Phase 3 movies.<p align="center">
<img src="./Output/5.png" alt="output5">
</p>
6. Find the movie with the highest budget among all superhero movies.<p align="center">
<img src="./Output/6.png" alt="output6">
</p>
7. Calculate the percentage of domestic box office gross for each Marvel movie.<p align="center">
<img src="./Output/7.png" alt="output7">
</p>
8. Find the movie with the highest Rotten Tomatoes critic score.
<p align="center">
<img src="./Output/8.png" alt="output8">
</p>
9. List all DC movies released after 2010.<p align="center">
<img src="./Output/9.png" alt="output9">
</p>
10. Find the average gross to budget ratio for Marvel Phase 2 movies.
<p align="center">
<img src="./Output/10.png" alt="output10">
</p>
11. Retrieve the top 5 highest-grossing movies for each distributor.
<p align="center">
<img src="./Output/11.png" alt="output11">
</p>
12. List all movies with a budget higher than $200 million.
<p align="center">
<img src="./Output/12.png" alt="output12">
</p>
13. Find the average length of movies in each MPAA rating category.
<p align="center">
<img src="./Output/13.png" alt="output13">
</p>
14. Calculate the total worldwide gross for each year.
<p align="center">
<img src="./Output/14.png" alt="output14">
</p>
15. List all Marvel movies led by a female character.
<p align="center">
<img src="./Output/15.png" alt="output15">
</p>
16. Find the movie with the highest inflation-adjusted worldwide gross.
<p align="center">
<img src="./Output/16.png" alt="output16">
</p>
17. Retrieve the top 3 movies with the highest ROI (Return on Investment).
<p align="center">
<img src="./Output/17.png" alt="output17">
</p>
18. List all Marvel Phase 1 movies with their budgets and lengths.
<p align="center">
<img src="./Output/18.png" alt="output18">
</p>
19. Find the distribution of MPAA ratings for DC movies.
<p align="center">
<img src="./Output/19.png" alt="output19">
</p>
20. Calculate the average inflation-adjusted budget for DC Phase 2 movies.
<p align="center">
<img src="./Output/20.png" alt="output20">
</p>
21. Retrieve the oldest DC movie in the dataset.
<p align="center">
<img src="./Output/21.png" alt="output21">
</p>
22. Find the movie with the highest box office gross in other territories.
<p align="center">
<img src="./Output/22.png" alt="output22">
</p>
23. Calculate the total box office gross for each franchise.
<p align="center">
<img src="./Output/23.png" alt="output23">
</p>
24. Retrieve the top 3 movies with the lowest Rotten Tomatoes critic scores.
<p align="center">
<img src="./Output/24.png" alt="output24">
</p>
25. List all movies released before 2000.
<p align="center">
<img src="./Output/25.png" alt="output25">
</p>
26. Find the average length of movies for each character family.
<p align="center">
<img src="./Output/26.png" alt="output26">
</p>
27. Calculate the percentage of movies with a budget higher than $100 million.
<p align="center">
<img src="./Output/27.png" alt="output27">
</p>
28. Retrieve the top 3 highest-grossing movies with a PG-13 rating.
<p align="center">
<img src="./Output/28.png" alt="output28">
</p>
29. List all movies with a break-even point less than 2.5x their budget.
<p align="center">
<img src="./Output/29.png" alt="output29">
</p>

### SQL Query:
[click here](./Box-Office-Performance-SQLQuery.sql) to see the all SQL queries for each question asked here.

> Note: The Questions are provided by <a href="https://www.linkedin.com/in/sushant-singh-chauhan-/" target="_blank">Sushant Singh Chauhan</a>. He posted on Linkedin. Check it <a href="https://www.linkedin.com/feed/update/urn:li:activity:7180606465416593409?updateEntityUrn=urn%3Ali%3Afs_updateV2%3A%28urn%3Ali%3Aactivity%3A7180606465416593409%2CFEED_DETAIL%2CEMPTY%2CDEFAULT%2Cfalse%29" target="_blank">here</a>.