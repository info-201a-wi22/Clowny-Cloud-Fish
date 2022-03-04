library(shiny)
<<<<<<< HEAD
=======
library(plotly)
>>>>>>> 19d7184e03a42cd5081ff8f03171fa1a55953b55

chart_3_tab <- tabPanel(
  "Chart #3",
  titlePanel("Chart #3"),
<<<<<<< HEAD
  mainPanel(tags$p("hello world"))
=======
  mainPanel(plotlyOutput("chart_3"))
>>>>>>> 19d7184e03a42cd5081ff8f03171fa1a55953b55
)
