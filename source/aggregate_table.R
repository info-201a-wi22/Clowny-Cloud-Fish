county_aggregate_table <- function(data) {
  data %>% 
    group_by(County, percent_has_1_medium) %>% 
    summarise(PercentMetTestedOnly = mean(PercentMetTestedOnly, na.rm = T)) %>% 
    mutate(percent_has_1_medium = round(percent_has_1_medium, 2), 
           PercentMetTestedOnly = round(PercentMetTestedOnly, 2)) %>% 
    arrange(desc(percent_has_1_medium)) %>% 
    rename(Population_with_medium_speed =  percent_has_1_medium,
           Mean_student_prop_met_standard = PercentMetTestedOnly)
}