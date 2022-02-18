
# Aggregate Table based on county


# 1) lowest Average Score

# average score of counties with medium_has_1 less than 0.5

# 2) Fastest Average Score

# average score of counties with medium_has_1 more than 0.5 

# 3) Average score of counties where majority population doesn't have multiple 
# providers of medium speed internet

# 4) Average score of counties where majority population has multiple 
# providers of medium speed internet

# average score of percent_has_more_2_fast

# 5) Low Income with medium_has_1 more than 0.5

# 6) Low Income with medium_has_1 less than 0.5 

library(tidyverse)

create_list <- function(data) {
  stats_list <- list()
  stats_list$slow_percent_met <- slow_percent_met(data)
  stats_list$fast_percent_met <- fast_percent_met(data)
  stats_list$less_percent_met <- less_percent_met(data)
  stats_list$more_percent_met <- more_percent_met(data)
  stats_list$low_income_fast_percent_met <- low_income_fast_percent_met(data)
  stats_list$low_income_slow_percent_met <- low_income_slow_percent_met(data)
  stats_list
}

slow_percent_met <- function(data) {
  data %>% 
    filter(percent_has_1_medium < 0.5) %>%
    summarize(avg_met_tested = mean(PercentMetTestedOnly)) %>%
    pull(avg_met_tested)
}
  
fast_percent_met <- function(data) {
  
}
  
less_percent_met <- function(data) {
  filtered <- data %>%
    filter(percent_has_2_medium < 0.5)
  return(mean(filtered$PercentMetTestedOnly))
}
  
more_percent_met <- function(data) {
  filtered <- data %>%
    filter(percent_has_2_medium >= 0.5)
  return(mean(filtered$PercentMetTestedOnly))
}
<<<<<<< HEAD

low_income_fast_percent_met <- function(data) {
  result <- data %>% 
    filter(StudentGroupType == "Low Income" & percent_has_1_medium > 0.5) %>% 
    summarize(mean = mean(PercentMetTestedOnly)) %>% 
    pull()
  result
}

low_income_slow_percent_met <- function(data) {
  result <- data %>% 
    filter(StudentGroupType == "Low Income" & percent_has_1_medium < 0.5) %>% 
    summarize(mean = mean(PercentMetTestedOnly)) %>% 
    pull()
  result
}


=======
>>>>>>> 5b775d4286d42693865e615c6ffab53aa5cfea3a
