
# Aggregate Table based on county


# 1) lowest Average Score

# average score of counties with medium_has_1 less than 0.5

# 2) Fastest Average Score

# average score of counties with medium_has_1 more than 0.5 

# 3) Doesn't have access to more than 1 Internet speed?   Average Score

# average score of percent_has_more_1_fast

# 4) Access to more than 1 Internet Speed?

# average score of percent_has_more_2_fast

# 5) Low Income with medium_has_1 more than 0.5

# 6) Low Income with medium_has_1 less than 0.5 

library(tidyverse)

slow_percent_met <- function(data) {
  data %>% 
    
}
  
fast_percent_met <- function(data) {
  
}
  
less_percent_met <- function(data) {
  
}
  
more_percent_met <- function(data) {
  
}

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
  
low_income_fast_percent_met(broadband_student_scores)
low_income_slow_percent_met(broadband_student_scores)


