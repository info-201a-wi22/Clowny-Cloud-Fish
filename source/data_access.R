# Example: Project Data Access Functions  ----
#----------------------------------------------------------------------------#
# These functions are used to access data sources ...
#----------------------------------------------------------------------------#

library(tidyverse)

load_broadband <- read.csv("../data/Area_Table_June2016.csv")
load_id_lookup <- read.csv("../data/Geography_Lookup_Table.csv")
load_test_scores <- read.csv("../data/Report_Card_Assessment_Data_2016-17_School_Year.csv")

id_lookup <- load_id_lookup %>%
  filter(Year == 2016, type == 'county') %>%
  select(geoid, name)

broadband <- load_broadband %>%
  filter(tech == 'acfosw', type == 'county') %>%
  left_join(id_lookup, by = c('id' = 'geoid')) %>%
  filter(str_detect(name, ', WA')) %>%
  rename(county = name) %>%
  mutate(county = str_sub(county, end = -12)) %>%
  select(county, speed, has_0, has_1, has_2, has_3more) %>%
  group_by(county, speed) %>%
  summarize(has_0 = sum(has_0), has_1 = sum(has_1), has_2 = sum(has_2),
            has_3more = sum(has_3more))

test_scores <- load_test_scores %>%
  filter(County != 'Multiple', County != "",
         GradeLevel == '6th Grade' | GradeLevel == '7th Grade' |
         GradeLevel == '8th Grade' | GradeLevel == '9th Grade' |
         GradeLevel == '10th Grade' | GradeLevel == '11th Grade' |
         GradeLevel == '12th Grade') %>%
  select(County, GradeLevel, StudentGroupType, TestSubject, PercentMetTestedOnly,
         PercentLevel1, PercentLevel2, PercentLevel3, PercentLevel4) %>%
  drop_na()

county_population <- broadband %>%
  distinct(county, .keep_all = TRUE) %>%
  group_by(county) %>%
  summarize(population = has_0 + has_1 + has_2 + has_3more)

broadband_speed_summary <- broadband %>%
  group_by(county, speed) %>%
  mutate(population = has_0 + has_1 + has_2 + has_3more) %>%
  mutate(percent_has_1 = (has_1 + has_2 + has_3more) / population) %>%
  mutate(percent_has_2 = (has_2 + has_3more) / population) %>%
  summarize(percent_has_1, percent_has_2)

slow_broadband <- broadband_speed_summary %>%
  filter(speed == 25) %>%
  rename(percent_has_1_slow = percent_has_1) %>%
  rename(percent_has_2_slow = percent_has_2) %>%
  select(county, percent_has_1_slow, percent_has_2_slow)

medium_broadband <- broadband_speed_summary %>%
  filter(speed == 100) %>%
  rename(percent_has_1_medium = percent_has_1) %>%
  rename(percent_has_2_medium = percent_has_2) %>%
  select(county, percent_has_1_medium, percent_has_2_medium)

fast_broadband <- broadband_speed_summary %>%
  filter(speed == 250) %>%
  rename(percent_has_1_fast = percent_has_1) %>%
  rename(percent_has_2_fast = percent_has_2) %>%
  select(county, percent_has_1_fast, percent_has_2_fast)

broadband_student_scores <- test_scores %>%
  left_join(slow_broadband, by = c('County' = 'county')) %>%
  left_join(medium_broadband, by = c('County' = 'county')) %>%
  left_join(fast_broadband, by = c('County' = 'county'))
