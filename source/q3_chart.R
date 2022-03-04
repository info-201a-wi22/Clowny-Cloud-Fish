# Chart #3 ---------------------------------------------------------------------
# Research Question 3: Does English as a second language students performance
# differ based on broadband speeds?

# Utilize broadband and testscores database to answer the question.

# Filter test_scores for just English Language Learners
filter_english_learners <- function(data_1) {
  filter_data <- data_1 %>%
  group_by(County, GradeLevel) %>%
  filter(StudentGroupType == "English Language Learners") %>%
  select(County, GradeLevel, StudentGroupType, PercentMetTestedOnly)
}

# Join the broadband and test_scores datasets
student_broadband_combine <- function(data_2) {
  combine_data <- data_1 %>%
  left_join(broadband, by = c("County" = "county"))
}

ms_broadband_25 <- function(data_3) {
  ms_data <- data_2 %>%
  filter(speed == 25) %>%
  filter(GradeLevel == "6th Grade" | GradeLevel == "7th Grade" |
         GradeLevel == "8th Grade")
}

hs_broadband_25 <- function(data_4) {
  hs_data <- data_2 %>%
  filter(speed == 25) %>%
  filter(GradeLevel == "9th Grade" | GradeLevel == "10th Grade" |
         GradeLevel == "11th Grade" | GradeLevel == "12th Grade")
}

ms_0 <- function(data_3) {
  ggplot(data_3) +
    geom_boxplot(aes(x = County, y = PercentMetTestedOnly,
                     fill = factor(has_0))) +

    labs(
      title = "State Test Satisfactory % vs Grade Level Based on County",
      subtitle = "(English language learners grades 6 - 8 with 0 providers to 25
                  mbps)",
      x = "County",
      y = "% of Who Scored Satisfactory",
    ) +

    facet_grid(rows = vars(GradeLevel)) +

    guides(fill = guide_legend(title = "Has 0 Broadband \n Providers")) +

    theme(axis.text.x = element_text(angle = 90))
}

ms_1 <- function(data_3) {
    ggplot(data_3) +
    geom_boxplot(aes(x = County, y = PercentMetTestedOnly,
                     fill = factor(has_1))) +

    labs(
      subtitle = "(English language learners grades 6 - 8 with 1 provider to 25
                  mbps)",
      x = "County",
      y = "% of Who Scored Satisfactory",
    ) +

    facet_grid(rows = vars(GradeLevel)) +

    guides(fill = guide_legend(title = "Has 1 Broadband \n Provider")) +

    theme(axis.text.x = element_text(angle = 90))
}

hs_0 <- function(data_4) {
  ggplot(data_4) +
    geom_boxplot(aes(x = County, y = PercentMetTestedOnly,
                     fill = factor(has_0))) +

    labs(
      title = "State Test Satisfactory % vs Grade Level Based on County",
      subtitle = "(English language learners grades 9 - 12 with 0 providers to
                  25 mbps)",
      x = "County",
      y = "",
    ) +

    facet_grid(rows = vars(GradeLevel)) +

    guides(fill = guide_legend(title = "Has 0 Broadband \n Providers")) +

    theme(axis.text.x = element_text(angle = 90))
}

hs_1 <- function(data_4) {
  ggplot(data_4) +
    geom_boxplot(aes(x = County, y = PercentMetTestedOnly,
                     fill = factor(has_1))) +

    labs(
      title = "High School State Test Satisfactory Percentage vs Grade Level
              Based on County",
      subtitle = "(English language learners grades 9 - 12 with 1 provider to
                  25 mbps)",
      x = "County",
      y = "",
    ) +

    facet_grid(rows = vars(GradeLevel)) +

    guides(fill = guide_legend(title = "Has 1 Broadband \n Provider")) +

    theme(axis.text.x = element_text(angle = 90))
}
