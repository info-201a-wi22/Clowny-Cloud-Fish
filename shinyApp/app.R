library("shiny")
library("tidyverse")
library("plotly")

setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

source("app_ui.R")
source("app_server.R")

shinyApp(ui = ui, server = server)