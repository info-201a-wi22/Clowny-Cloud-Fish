library(shiny)

chart_3_tab <- tabPanel(
  tags$span(class = "tab", "Chart #3"),
  titlePanel("Chart #3"),
  tags$br(),
  sidebarLayout(
    sidebarPanel(
      selectInput(
        inputId = "chart_3_variables",
        label = "Select Grade",
        choices = c("Middle School", "High School")
      ),
      tags$p(class = "chart_description", "Due to language barriers, we wanted to observe how those students' academics were impacted by broadband access. In our digital age, our education is moving towards online research, homework, and resources. Navigating our academic system is hard enough for non-English speakers, and if they don’t have access to broadband, it’ll can push them farther behind. Therefore, we want to explore the impact broadband had on English learners. For this analysis, the definition of broadband is 1 provider and having at least 25 mbps.")
    ),
    mainPanel(plotlyOutput("chart_3a"),
              plotlyOutput("chart_3b"))
  )
)
