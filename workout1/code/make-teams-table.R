
##################################################
## title: NBA 2018 Data Preparation
## description: Table of NBA 2018 teams
## input(s): nba2018-teams.csv data
## output(s): nba2018-teams.csv data, efficiency-summary.txt, teams-summary.txt
##################################################

### Data Preparation for nba2018-teams.csv

#### Description
# In this script, I will preprocess solumns `salary`, `experience`, and `position`. 
# I will change `experience` by replacing all of the `"R"` 
# with 0 and then convert the entire column into integers.
# I will tranform `salary` so that I have salaries in millions.
# I will relabel `position` into a factor with more descriptive names.
# They will be `center` instead of `C`, `power_fwd` 
# instead of `PF`, `point_guard` instead of `PG`, `small_fwd` 
# instead of `SF`, and `shoot_guard` instead of `SG`.
# 
# I will also add new variables such as the following:
#  - `missed_fg` = missed field goals 
#  - `missed_ft` = missed free throws 
#  - `rebounds` = offensive rebounds + defensive rebounds 
#  - `efficiency` = efficiency index
# 
# I will also use `sink()` to send the R output of `summary()` 
# on `efficiency`. Then, we will use data aggregation, which 
# is grouping by operations to create nba2018-teams.csv , 
# a data frame for teams and use sink to create a summary of the 
# teams and a .csv file.
# 
# 




# A bit of preprocessing
setwd("/Users/sharonhui/Desktop/hw-stat133/workout1/data")
nba <-read.csv("../data/nba2018.csv", header = TRUE, 
               stringsAsFactors = FALSE)
nba$experience <- as.character(nba$experience)
nba$experience[nba$experience == "R"] <- 0
nba$experience <- as.integer(nba$experience)
nba$salary <- nba$salary/1000000
levels(nba$position)
levels(nba$position) <- c("center", 
                          "power_fwd", 
                          "point_guard", 
                          "small_fwd", 
                          "shoot_guard")
# Adding new variables
library(dplyr)
nba <- mutate(nba, missed_fg = (field_goals_atts - field_goals), 
              missed_ft = (points1_atts - points1), 
              rebounds = (off_rebounds + def_rebounds), 
              efficiency = ((points + rebounds + assists + steals + blocks - missed_fg - missed_ft - turnovers))/games)

sink(file = "../output/efficiency-summary.txt")
summary(nba$efficiency)
sink()

### Creating nba2018-teams.csv
# With your updated data frame you will do some data aggregation—or 
# grouped by operations— to create a data frame teams, computing total values, 
# for each team, of the following required variables: 
#  - team: 3-letter team abbreviation 
#  - experience: sum of years of experience (up to 2 decimal digits) 
#  - salary: total salary (in millions, up to 2 decimal digits) 
#  - points3: total 3-Point Field Goals 
#  - points2: total 2-Point Field Goals
#  - points1: total free throws 
#  - points: total Points 
#  - off_rebounds: total Offensive Rebounds 
#  - def_rebounds: total Defensive Rebounds 
#  - assists: total Assists 
#  - steals: total Steals 
#  - blocks: total Blocks 
#  - turnovers: total Turnovers 
#  - fouls: total fouls 
#  - efficiency: total efficiency
teams <- data.frame(summarize((group_by(nba, team)), 
                              experience = sum(experience),
                   salary = sum(salary),
                   points3 = sum(points3),
                   points2 = sum(points2),
                   points1 = sum(points1),
                   points  = sum(points),
                   off_rebounds = sum(off_rebounds),
                   def_rebounds = sum(def_rebounds),
                   assists = sum(assists),
                   steals = sum(steals),
                   blocks = sum(blocks),
                   turnovers = sum(turnovers),
                   fouls = sum(fouls),
                   efficiency = sum(efficiency)
                   ))
sink(file = "../output/teams-summary.txt")
summary(teams)
sink()


write.csv(teams, file = "../data/nba2018-teams.csv")




