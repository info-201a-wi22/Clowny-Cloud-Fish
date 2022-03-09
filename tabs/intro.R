library(shiny)

intro_tab <- tabPanel(
  tags$span(class = "tab", "Introduction"),
  titlePanel("Introduction"),
  mainPanel(
    fluidPage(
      tags$img(src = "https://github.com/info-201a-wi22/Clowny-Cloud-Fish/raw/main/image/connected_learning.jpeg", align = "center"),
      
      tags$p("The focus of our project is to determine whether or not broadband
        accessibility impacted student academic performance for Washington state.
        We gauged student performance through state-proctored testing data from
        2016-2017 provided by the Office of Elementary and Secondary Education,
        which is under the Department of Education. Broadband accessibility data
        (types of connection, number of providers, and download speed) was
        collected for June 2016 by the Federal Communication Commission (FCC). We
        examined the correlation of broadband to education by exploring three
        different points of evaluation. Our first analysis tracked if limited
        broadband access impacted satisfactory test levels. Then we broke it down
        by different subjects and broadband performance. And finally, we reviewed
        how broadband access impacted English as a second language students.")
    )  
  )
)
