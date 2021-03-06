library(shiny)

source("tabs/intro.R")
source("tabs/chart1.R")
source("tabs/chart2.R")
source("tabs/chart3.R")
source("tabs/summary.R")
source("tabs/report.R")

ui <- navbarPage(
  tags$i(tags$span(style = "font-family:Lucida Handwriting, Papyrus;color:blue
                   font-size:30px;font-weight:bold", "Broadband Effect on
                   Education")),
  tags$head(includeCSS("tabs/styles.css")),
  tags$head(tags$link(rel = "shortcut icon",
                      href = "https://www.aquariumofpacific.org/images/made_new/images-uploads-clownfish_600_q85.jpg")),
  intro_tab,
  chart_1_tab,
  chart_2_tab,
  chart_3_tab,
  summary_tab,
  report_tab
)
