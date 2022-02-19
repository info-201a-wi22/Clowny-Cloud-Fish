# Does having medium speed Internet access affect performance?

# Function to create scatter plot
create_scatter <- function(data, variable, labels) {
  ggplot(data = data, mapping = aes(x = get(variable), y = PercentMetTestedOnly)) +
    scale_x_continuous(breaks = c(0, 0.5, 1)) +
    scale_y_continuous(breaks = c(0, 0.5, 1)) +
    geom_point() +
    geom_smooth(formula = y ~ x, method = 'lm', se = F, color = 'red') +
    labs(title = labels[1], x = labels[2], y = "Mean proportion of students who passed") + 
    theme(plot.title = element_text(hjust = 0.5, face = "bold"),
          panel.grid.major = element_blank(), 
          panel.grid.minor = element_blank(),
          panel.background = element_blank(), 
          axis.line = element_line(colour = "black"),
          axis.title.x = element_text(margin = margin(t = 15, r = 0, b = 0, l = 0)),
          axis.title.y = element_text(margin = margin(t = 0, r = 15, b = 0, l = 0)),
          panel.border = element_rect(colour = "black", fill = NA, size=3))
}

# Function to create labels
create_speed_labels <- function(speed) {
  title = paste("How does having", speed, "Internet speed affect high school performance?")
  x = paste("County proportion with", speed, "Internet speed")
  c(title, x)
}

create_access_labels <- function(speed) {
  title = paste("How does the number of available Internet access points\n(", speed, " speed) affect high school performance?", sep = "")
  x = "County Proportion with at least two access points (relative to one)"
  c(title, x)
}
  
# Grouped by County (Average Percent Met Standard)
summarize_data <- function(data) {
  filtered_data <- data %>%
  filter(str_detect(GradeLevel, "9|10|11|12")) %>% 
  mutate(prop_1_2_medium = percent_has_2_medium / percent_has_1_medium,
         prop_1_2_fast = percent_has_2_fast / percent_has_1_fast) %>% 
  group_by(County, percent_has_1_medium, percent_has_1_fast, prop_1_2_medium, prop_1_2_fast) %>% 
  summarise(PercentMetTestedOnly = mean(PercentMetTestedOnly, na.rm = T)) %>% 
  replace_na(list(prop_1_2_medium = 0, prop_1_2_fast = 0))
}