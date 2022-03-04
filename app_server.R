source("source/data_access.R")
source("source/q1_chart.R")
source("source/q2_chart.R")
source("source/q3_chart.R")

server <- function(input, output) {
  output$chart_1 <- renderPlotly({
    data <- summarize_data(broadband_student_scores)
    return(ggplotly(create_scatter(data, "percent_has_1_medium", 
                                   create_speed_labels("medium"))))
  })
  
  output$chart_2 <- renderPlotly({
    data <- filter_data(broadband_student_scores)
    return(ggplotly(generate_plot(data)))
  })
  
  output$chart_3 <- renderPlotly({
    data_1 <- filter_english_learners(test_scores)
    data_2 <- student_broadband_combine(data_1)
    data_3 <- ms_broadband_25(data_2)
    return(ggplotly(ms_0(data_3)))
  })
}
