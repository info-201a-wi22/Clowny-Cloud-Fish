county_aggregate_table <- function(data) {
  data %>% 
    group_by(County, percent_has_1_slow, percent_has_2_slow, percent_has_1_medium, percent_has_2_medium, percent_has_1_fast, percent_has_2_fast) %>% 
    summarise(PercentMetTestedOnly = mean(PercentMetTestedOnly, na.rm = T))
}