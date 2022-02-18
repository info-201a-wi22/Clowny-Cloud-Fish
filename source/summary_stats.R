
# Aggregate Table based on county

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
  filter_greater_half <- data %>%
    filter(percent_has_1_medium > .5) %>%
    summarise(avg_score = mean(PercentMetTestedOnly)) %>%
    pull(avg_score)
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