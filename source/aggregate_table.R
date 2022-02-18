# Aggregate Table Script--------------------------------------------------------

# Aggregate Table based on county

county_aggregate_table <- function(data) {
  data %>%
    group_by(County, percent_has_1_slow, percent_has_2_slow, percent_has_1_medium,
             percent_has_2_medium, percent_has_1_fast, percent_has_2_fast) %>%
    summarise(PercentMetTestedOnly = mean(PercentMetTestedOnly, na.rm = T)) %>%
    arrange(PercentMetTestedOnly) %>%
    relocate(County, PercentMetTestedOnly) %>%
    rename(Population_with_slow_1 = percent_has_1_slow,
           Population_with_slow_2 = percent_has_2_slow,
           Population_with_medium_1 =  percent_has_1_medium,
           Population_with_medium_2 = percent_has_2_medium,
           Population_with_fast_1 = percent_has_1_fast,
           Population_with_fast_2 = percent_has_2_fast,
           Students_Met_Standard = PercentMetTestedOnly)
}