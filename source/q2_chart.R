filter_data <- function(data) {
  temp <- broadband_student_scores %>%
    filter(StudentGroupType == "All") %>%
    group_by(GradeLevel,
             County,
             percent_has_1_medium,
             TestSubject) %>%
    summarize(avg_met_standard = mean(PercentMetTestedOnly))

  temp$percent_has_1_medium <- temp$percent_has_1_medium %>%
    round(2) * 100

  temp$avg_met_standard <- temp$avg_met_standard * 100
  temp
}

generate_plot <- function(data) {
  ggplot(data, aes(x = percent_has_1_medium,
                   y = avg_met_standard,
                   )) +
  geom_point(mapping = aes(text = paste("Percent Access: ",
                                        round(percent_has_1_medium, 2),
                                        "\nPercent Passed: ",
                                        round(avg_met_standard, 2), 
                                        sep = ""))) +
  geom_smooth(formula = y ~ x, method = lm, se = FALSE, fullrange = TRUE) +
  labs(title = "Effects of Broadband Access On Test Subject Performance",
       x = "Percent of Students With Access to Broadband",
       y = "Percent of Students That Met Testing Standards")
}
