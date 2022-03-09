library(shiny)

source("../tabs/intro.R")
source("../tabs/chart1.R")
source("../tabs/chart2.R")
source("../tabs/chart3.R")
source("../tabs/summary.R")
source("../tabs/report.R")
source("../source/data_access.R")
source("../image/connected_learning.jpeg")
source("../image/learning_image.jpeg")

ui <- navbarPage(
  tags$i(tags$span(style = "color:blue;font-size:30px;font-weight:bold", "Broadband Effect on Education")),
  tags$head(includeCSS("../tabs/styles.css")),
  intro_tab,
  chart_1_tab,
  chart_2_tab,
  chart_3_tab,
  summary_tab,
  report_tab
)

