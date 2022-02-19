# Chart #3 ---------------------------------------------------------------------
# Research Question 3: Does English as a second language students performance 
# differ based on broadband speeds?

# Utilize broadband and testscores database to answer the question.


# Filter test_scores for just English Language Learners
filter_english_learner_students <- function(data_1) {
  filter_data <- data_1 %>%
  group_by(County, GradeLevel) %>%
  filter(StudentGroupType == "English Language Learners") %>%
  select(County, GradeLevel, StudentGroupType, PercentMetTestedOnly)
}

# Join the broadband and test_scores datasets
student_broadband_combine <- function(data_2) {
  combine_data <- data_1 %>%
  left_join(broadband, by = c("County" = 'county'))
}

middle_student_broadband_25 <- student_broadband_combine %>%
  filter(speed == 25) %>%
  filter(GradeLevel == "6th Grade" | GradeLevel == "7th Grade" | 
         GradeLevel == "8th Grade") %>%
  

high_student_broadband_25 <- student_broadband_combine %>%
  filter(speed == 25) %>%
  filter(GradeLevel == "9th Grade" | GradeLevel == "10th Grade" | 
         GradeLevel == "11th Grade" | GradeLevel == "12th Grade")

order_middle_student_broadband_25 <- within(middle_student_broadband_25, GradeLevel <- 
                                     factor(GradeLevel, levels = c("6th Grade",
                                                                   "7th Grade",
                                                                   "8th Grade")))

order_high_student_broadband_25 <- within(high_student_broadband_25, GradeLevel <- 
                                       factor(GradeLevel, levels = c("9th Grade",
                                                                     "10th Grade",
                                                                     "11th Grade",
                                                                     "12th Grade")))

ggplot(order_student_broadband_25) +
  geom_boxplot(aes(x = County, y = PercentMetTestedOnly, fill = has_0)) +
  
  labs(
    title = "State Test Satisfactory Percentage vs Grade Level Based on County",
    subtitle = "(English language learners students grades 6 - 12 with 0 access to 25 mbps)",
    x = "County",
    y = "Percentage of Students Who Scored Satisfactory Grades",
    color = "Broadband Speed (mpbs)"
  ) +
  
  facet_wrap(~GradeLevel) +
  
  theme(axis.text.x = element_text(angle = 90))

ggplot(order_student_broadband_25) +
  geom_boxplot(aes(x = County, y = PercentMetTestedOnly, fill = has_1)) +
  
  labs(
    title = "State Test Satisfactory Percentage vs Grade Level Based on County",
    subtitle = "(English language learners students grades 6 - 12 with 1 access point to 25 mbps)",
    x = "County",
    y = "% of Who Scored Satisfactory Grades",
    color = "Broadband Speed (mpbs)"
  ) +
  
  facet_wrap(~GradeLevel) +
  
  guides(fill = guide_legend(title="Has 1 \n Broadband \n Access Point")) +
  
  theme(axis.text.x = element_text(angle = 90))

ggplot(order_middle_student_broadband_25) +
  geom_boxplot(aes(x = County, y = PercentMetTestedOnly, fill = has_0)) +
  
  labs(
    title = "State Test Satisfactory Percentage vs Grade Level Based on County",
    subtitle = "(English language learners students grades 6 - 12 with 0 access to 25 mbps)",
    x = "County",
    y = "% of Who Scored Satisfactory Grades",
  ) +
  
  facet_wrap(~GradeLevel) +
  
  guides(fill = guide_legend(title="Has 0 \n Broadband \n Access Point")) +
  
  theme(axis.text.x = element_text(angle = 90))

ms_0 <- ggplot(order_middle_student_broadband_25) +
  geom_boxplot(aes(x = County, y = PercentMetTestedOnly, fill = has_0)) +
  
  labs(
    title = "Middle School State Test Satisfactory Percentage vs Grade Level Based on County",
    subtitle = "(English language learners grades 6 - 8 \n with 0 access to 25 mbps)",
    x = "County",
    y = "% of Who Scored Satisfactory",
  ) +
  
  facet_grid(rows = vars(GradeLevel)) +
  
  guides(fill = guide_legend(title="Has 0 \n Broadband \n Access Point")) +
  
  scale_fill_manual(values = c("#00AFBB")) +
  
  theme(axis.text.x = element_text(angle = 90))

ms_1 <- ggplot(order_middle_student_broadband_25) +
  geom_boxplot(aes(x = County, y = PercentMetTestedOnly, fill = has_1)) +
  
  labs(
    subtitle = "(English language learners grades 6 - 8 \n with 1 access to 25 mbps)",
    x = "County",
    y = "% of Who Scored Satisfactory",
  ) +
  
  facet_grid(rows = vars(GradeLevel)) +
  
  guides(fill = guide_legend(title="Has 1 \n Broadband \n Access Point")) +
  
  theme(axis.text.x = element_text(angle = 90))

hs_0 <- ggplot(order_high_student_broadband_25) +
  geom_boxplot(aes(x = County, y = PercentMetTestedOnly, fill = has_0)) +
  
  labs(
    title = "High School State Test Satisfactory Percentage vs Grade Level Based on County",
    subtitle = "(English language learners grades 9 - 12 \n with 0 access to 25 mbps)",
    x = "County",
    y = "",
  ) +
  
  facet_grid(rows = vars(GradeLevel)) +
  
  guides(fill = guide_legend(title="Has 0 \n Broadband \n Access Point")) +
  
  theme(axis.text.x = element_text(angle = 90))

hs_1 <- ggplot(order_high_student_broadband_25) +
  geom_boxplot(aes(x = County, y = PercentMetTestedOnly, fill = has_1)) +
  
  labs(
    title = "High School State Test Satisfactory Percentage vs Grade Level Based on County",
    subtitle = "(English language learners grades 9 - 12 \n with 1 access to 25 mbps)",
    x = "County",
    y = "",
  ) +
  
  facet_grid(rows = vars(GradeLevel)) +
  
  guides(fill = guide_legend(title="Has 1 \n Broadband \n Access Point")) +
  
  theme(axis.text.x = element_text(angle = 90))

ggarrange(ms_0, hs_0, ms_1, hs_1,
          ncol = 2, nrow =2)
