library(shiny)

summary_tab <- tabPanel(
  "Summary",
  titlePanel("Summary"),
  mainPanel(
    tags$span(class = "takeaway", "1) "),
    tags$span(class = "takeaway", "2) "),
    tags$span(class = "takeaway", "3) ")
  )
)
