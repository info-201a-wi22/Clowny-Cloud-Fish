library(shiny)
library(plotly)

chart_1_tab <- 
    tabPanel(
      "Chart #1",
      titlePanel("Chart #1"),
      sidebarLayout(
        sidebarPanel(
          selectInput(
            inputId = "chart_1_variables",
            label = "Select variable",
            choices = c("Speed", "Access Points")
          ),
          textOutput("description_1")
        ),
        mainPanel(plotlyOutput("chart_1a"),
                  tags$br(),
                  tags$br(),
                  tags$br(),
                  tags$br(),
                  plotlyOutput("chart_1b"))
      )
    )
    


