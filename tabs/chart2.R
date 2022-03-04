library(shiny)
library(plotly)

chart_2_tab <- tabPanel(
  "Chart #2",
  titlePanel("Chart #2"),
  mainPanel(plotlyOutput("chart_2"))
)
