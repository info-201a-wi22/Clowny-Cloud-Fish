library(shiny)

source("../source/data_access.R")
source("../source/q1_chart.R")
source("../source/q2_chart.R")
source("../source/q3_chart.R")


server <- function(input, output) {
  # Interactive Page 1
  data_1 <- summarize_data(broadband_student_scores)
  speed_variables <- c("percent_has_1_medium", "percent_has_1_fast")
  access_variables <- c("prop_1_2_medium", "prop_1_2_fast")
  all_plots_1 <- list()
  for (x in seq(length(speed_variables))) {
    speed <- NULL
    if (str_detect(speed_variables[x], "medium")) {
      speed <- "medium"
    } else {
      speed <- "fast"
    }
    all_plots_1[[x]] <- create_scatter(data_1, speed_variables[x], create_speed_labels(speed))
    all_plots_1[[x + 2]] <- create_scatter(data_1, access_variables[x], create_access_labels(speed))
  }
  all_plots_1 <- all_plots_1 %>%
    lapply(ggplotlyify, T)

  output$chart_1a <- renderPlotly({
    if (input$chart_1_variables == "Speed") {
      return(all_plots_1[[1]])
    } else
      return(all_plots_1[[3]])
  })
  output$chart_1b <- renderPlotly({
    if (input$chart_1_variables == "Speed") {
      return(all_plots_1[[2]])
    } else {
      return(all_plots_1[[4]])
    }
  })
  output$description_1 <- renderUI({
    if (input$chart_1_variables == "Speed") {
      return(description_1a)
    } else {
      return(description_1b)
    }
  })


  # Interactive Page 2
  data_2 <- filter_data(broadband_student_scores)
  subjects <- c("Biology", "ELPA", "English Language Arts", "Math", "Science")
  all_plots_2 <- list()
  for (x in seq(length(subjects))) {
    current_subject <- subjects[x]
    current_plot <- generate_plot(filter(data_2, TestSubject == current_subject))
    all_plots_2[[current_subject]] <- ggplotlyify(current_plot, T)
  }
  output$chart_2 <- renderPlotly({
    all_plots_2[[input$chart_2_variables]]
  })

  # Interactive Page 3
  basic_data <- student_broadband_combine(filter_english_learners(test_scores))
  data_3a <- ms_broadband_25(basic_data)
  data_3b <- hs_broadband_25(basic_data)
  all_plots_3 <- list(ms_0(data_3a), ms_1(data_3a), hs_0(data_3b), hs_1(data_3b)) %>%
    lapply(ggplotlyify, F)
  output$chart_3a <- renderPlotly({
    if (input$chart_3_variables == "Middle School") {
      return(all_plots_3[[1]])
    } else {
      return(all_plots_3[[3]])
    }
  })
  output$chart_3b <- renderPlotly({
    if (input$chart_3_variables == "Middle School") {
      return(all_plots_3[[2]])
    } else {
      return(all_plots_3[[4]])
    }
  })

  # Report Page
  output$report_text <- renderUI({
    all_report_texts[[input$report_sections]]
  })
}

ggplotlyify <- function(plot_data, change_tooltip) {
  if (change_tooltip) {
    return(ggplotly(plot_data, tooltip = c("text")))
  } else {
    return(ggplotly(plot_data))
  }
}

description_1a <- tags$p(class = "chart_description", "These scatter plots attempt to roughly illustrate the impact that Internet speed has on the quality of education. Specifically, it measures the correlation between 1) the population proportion of each county that has at least medium (100Mbps)/ fast level (250Mbps) Internet speed to 2) the mean proportion of high school students who met test standards.")
description_1b <- tags$p(class = "chart_description", "These scatter plots attempt to roughly illustrate the impact that the number of Internet access points has on the quality of education. Specifically, it measures the correlation between 1) the population proportion of each county that has at least two access points (relative to one) to 2) the mean proportion of high school students who met test standards. Each graph takes into consideration two different Internet speeds, medium and fast.")


