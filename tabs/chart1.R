
source("./source/q1_chart.R")

chart_1_tab <- function(data) {
  return(
    tabPanel(
      "Chart #1",
      titlePanel("Chart #1"),
      mainPanel(ggplotly(create_scatter(data, "percent_has_1_medium",
                                        create_speed_labels("medium"))))
    )
  )
}


chart_1_tab <- tabPanel(
  "Chart #1",
  titlePanel("Chart #1"),
  mainPanel(plotlyOutput("chart_1"))
)
