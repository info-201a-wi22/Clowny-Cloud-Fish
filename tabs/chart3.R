chart_3_tab <- tabPanel(
  "Chart #3",
  titlePanel("Chart #3"),
  mainPanel(tags$p("hello world")),
  mainPanel(plotlyOutput("chart_3"))
)
