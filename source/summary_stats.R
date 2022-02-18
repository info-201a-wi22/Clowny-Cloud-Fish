
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

# Low Income with medium_has_1 less than 0.5 

library(tidyverse)

slow_percent_met <- function(data) {
  data %>% 
    
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
