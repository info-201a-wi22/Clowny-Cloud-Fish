library(shiny)
library(plotly)

chart_1_tab <- tabPanel(
  "Chart #1",
  titlePanel("Chart #1"),
  mainPanel(plotlyOutput("chart_1"))
)