# Summary Information Script----------------------------------------------------

library(tidyverse)

# List of summary information
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

# Test satisfactory average where less than 50% has 1 provider with at least 100 mbps
slow_percent_met <- function(data) {
  data %>%
    filter(percent_has_1_medium < 0.5) %>%
    summarize(avg_met_tested = mean(PercentMetTestedOnly)) %>%
    pull(avg_met_tested)
}

# Test satisfactory average where more than 50% has 1 provider with at least 100 mbps
fast_percent_met <- function(data) {
  filter_greater_half <- data %>%
    filter(percent_has_1_medium >= 0.5) %>%
    summarise(avg_score = mean(PercentMetTestedOnly)) %>%
    pull()
  filter_greater_half
}

# Test satisfactory average where less than 50% does have at least 2 providers
# with at least 100 mbps
less_percent_met <- function(data) {
  filtered <- data %>%
    filter(percent_has_2_medium < 0.5)
  return(mean(filtered$PercentMetTestedOnly))
}

# Test satisfactory average where more than 50% does have at least 2 providers
# with at least 100 mbps
more_percent_met <- function(data) {
  filtered <- data %>%
    filter(percent_has_2_medium >= 0.5)
  return(mean(filtered$PercentMetTestedOnly))
}

# Test satisfactory average where more that 50% of low income students have
# 1 provider with at least 100 mbps
low_income_fast_percent_met <- function(data) {
  result <- data %>%
    filter(StudentGroupType == "Low Income" & percent_has_1_medium >= 0.5) %>%
    summarize(mean = mean(PercentMetTestedOnly)) %>%
    pull()
  result
}

# Test satisfactory average where less that 50% of low income students have
# 1 provider with at least 100 mbps
low_income_slow_percent_met <- function(data) {
  result <- data %>%
    filter(StudentGroupType == "Low Income" & percent_has_1_medium < 0.5) %>%
    summarize(mean = mean(PercentMetTestedOnly)) %>%
    pull()
  result
}
