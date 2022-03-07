library(shiny)

summary_tab <- tabPanel(
  tags$span(class = "tab", "Summary"),
  titlePanel("Summary"),
  mainPanel(
    tags$span(class = "takeaway", "1) "),
    tags$br(),
    tags$span(class = "takeaway", "2) "),
    tags$br(),
    tags$span(class = "takeaway", "3) ")
  )
)
