library(shiny)
library(plotly)

chart_1_tab <- 
    tabPanel(
      tags$span(class = "tab", "Chart #1"),
      titlePanel("Chart #1"),
      tags$br(),
      sidebarLayout(
        sidebarPanel(
          selectInput(
            inputId = "chart_1_variables",
            label = "Select variable",
            choices = c("Speed", "Access Points")
          ),
          uiOutput("description_1")
        ),
        mainPanel(plotlyOutput("chart_1a"),
                  tags$br(),
                  tags$br(),
                  tags$br(),
                  tags$br(),
                  plotlyOutput("chart_1b"))
      )
    )
    


