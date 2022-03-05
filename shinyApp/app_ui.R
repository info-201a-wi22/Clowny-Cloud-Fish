library(shiny)

source("../tabs/intro.R")
source("../tabs/chart1.R")
source("../tabs/chart2.R")
source("../tabs/chart3.R")
source("../tabs/summary.R")
source("../tabs/report_1.R")
source("../source/data_access.R")

ui <- navbarPage(
  "Broadband Effect on Education",
  intro_tab,
  chart_1_tab,
  chart_2_tab,
  chart_3_tab,
  summary_tab,
  report_tab
)

