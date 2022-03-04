library(shiny)
<<<<<<< HEAD
=======
library(plotly)
>>>>>>> 19d7184e03a42cd5081ff8f03171fa1a55953b55

chart_2_tab <- tabPanel(
  "Chart #2",
  titlePanel("Chart #2"),
<<<<<<< HEAD
  mainPanel(tags$p("hello world"))
=======
  mainPanel(plotlyOutput("chart_2"))
>>>>>>> 19d7184e03a42cd5081ff8f03171fa1a55953b55
)
