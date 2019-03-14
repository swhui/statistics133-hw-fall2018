## Data dictionary for file tents.RData

Here's the description of the R objects in `nba2018.RData`:


The data is about the NBA players and their statistics such as their 
`name`, `number`, `team`, `position`, `height`, `weight`, `birth_date`, 
`country`, `experience`, `college`, and others. The data gives us 
information about their performance during games and also some brief 
background information about their position and life.

The main source of the data comes from 
[https://www.basketball-reference.com/](https://www.basketball-reference.com/).

Here is the sample link for the data source for the GS Warriors (also known 
in the data as `GSW` or the Golden State Warriors): 
[https://www.basketball-reference.com/teams/GSW/2018.html](https://www.basketball-reference.com/teams/GSW/2018.html)

Here is the sample link for the data source for the LA Lakers (also known in 
the data as `LAL` or the Los Angeles Lakers):
[https://www.basketball-reference.com/teams/LAL/2018.html](https://www.basketball-reference.com/teams/LAL/2018.html)


There are 477 observations and 38 variables. There are 477 rows (not 
including the header, which has the name of the columns). There are also 38 
columns (not including the index column).

Below is the description of variables, which are the column labels, in `nba2018.csv`:

 - `player`: first and last names of player. The data type is `character`.
 - `number`: number on jersey. The data type is `character`.
 - `team`: 3-letter team abbreviation. The abbreviations are "C", "PF", "PG", "SF", and "SG". The data type is `integer`.
 - `position`: player’s position. The data type is `character`.
 - `height`: height in feet-inches. The data type is `character`.
 - `weight`: weight in pounds. The data type is `integer`.
 - `birth_date`: date of birth (“Month day, year”) The data type is `character`.
 - `country`: 2-letter country abbreviation. The data type is `character`.
 - `experience`: years of experience in NBA (a value of R means rookie). The data type is `integer`.
 - `college`: attended college in USA. The data type is `character`.
 - `salary`: player salary in dollars. The data type is `numeric`.
 - `rank`: Rank of player in his team. The data type is `integer`.
 - `age`: Age of Player at the start of February 1st of that season. The data type is `integer`.
 - `games`: Games Played during regular season. The data type is `integer`.
 - `games_started`: Games Started. The data type is `integer`.
 - `minutes`: Minutes Played during regular season. The data type is `integer`.
 - `field_goals`: Field Goals Made. The data type is `integer`.
 - `field_goals_atts`: Field Goal Attempts. The data type is `integer`.
 - `field_goals_perc`: Field Goal Percentage. The data type is `numeric`.
 - `points3`: 3-Point Field Goals. The data type is `integer`.
 - `points3_atts`: 3-Point Field Goal Attempts. The data type is `integer`.
 - `points3_perc`: 3-Point Field Percentage. The data type is `numeric`.
 - `points2`: 2-Point Field Goals. The data type is `integer`.
 - `points2_atts`: 2-Point Field Goal Attempts. The data type is `integer`.
 - `points2_perc`: 2-Point Field Goal Percentage. The data type is `numeric`.
 - `effective_field_goal_perc`: Effective Field Goal Percentage The data type is `numeric`.
 - `points1`: Free Throws Made. The data type is `integer`.
 - `points1_atts`: Free Throw Attempts. The data type is `integer`.
 - `points1_perc`: Free Throw Percentage. The data type is `numeric`.
 - `off_rebounds`: Offensive Rebounds. The data type is `integer`.
 - `def_rebounds`: Defensive Rebounds. The data type is `integer`.
 - `assists`: Assists. The data type is `integer`.
 - `steals`: Steals. The data type is `integer`.
 - `blocks`: Blocks. The data type is `integer`.
 - `turnovers`: Turnovers. The data type is `integer`.
 - `fouls`: Fouls. The data type is `integer`.
 - `points`: Total points. The data type is `integer`.
 

There are column names with abbreviations including team, position, 
birth_date, country, and experience. For team, there are 3-letter team 
abbreviations. For position, the abbreviations are "C", "PF", "PG", "SF", 
and "SG". For the birth date, there are abbreviations for months that have 
names longer than 3 letters. Country is abbreviated into 2 letters. For 
experience, "R" stands for rookie and indicates when a player has 0 
experience.

There are missing values in `college`, `field_goals_perc`, `points3_perc`, `points2_perc`, `effective_field_goal_perc`, and `points1_perc`. For `college`, missing values are codified with blank spaces. For the other columns, missing values are codified with blank spaces.

After using `sum(nba$college == "")`,
`college` has 89 missing values.

After using `sum(is.na(nba$field_goals_perc))`,
`field_goals_perc` has 2 missing values.

After using `sum(is.na(nba$points3_perc))`,
`points3_perc` has 39 missing values.

After using `sum(is.na(nba$points2_perc))`,
`points2_perc` has 5 missing values.

After using `sum(is.na(nba$effective_field_goal_perc))`,
`effective_field_goal_perc` has 2 missing values.

After using `sum(is.na(nba$points1_perc))`, 
`points1_perc` has 19 missing values.