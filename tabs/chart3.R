library(shiny)
library(plotly)

chart_3_tab <- tabPanel(
  "Chart #3",
  titlePanel("Chart #3"),
  mainPanel(plotlyOutput("chart_3"))
)
