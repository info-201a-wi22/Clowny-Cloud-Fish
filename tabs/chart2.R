library(shiny)

chart_2_tab <- tabPanel(
  tags$span(class = "tab", "Chart #2"),
  titlePanel("Chart #2"),
  tags$br(),
  sidebarLayout(
    sidebarPanel(
      selectInput(
        inputId = "chart_2_variables",
        label = "Select Subject",
        choices = c("Biology", "ELPA", "English Language Arts", "Math", "Science")
      ),
      tags$p(class = "chart_description", "One of the reasons why we wanted to conduct this research was to determine the potential effects of broadband access on student academic performance. This chart shows the correlation between the percentage of students who have access to acceptable broadband and the percentage of those students who meet testing standards.")
    ),
    mainPanel(
      plotlyOutput("chart_2")
    )
  )
)

