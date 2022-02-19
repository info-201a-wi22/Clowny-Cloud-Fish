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
                   shape = TestSubject,
                   color = TestSubject)) +
  geom_point() +
  geom_smooth(method = lm, se = FALSE, fullrange = TRUE) +
  labs(title = "Effects of Broadband Access On Test Subject Performance",
       x = "Percent of Students With Access to Broadband",
       y = "Percent of Students That Met Testing Standards")
}
