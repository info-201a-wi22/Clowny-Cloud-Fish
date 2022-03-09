library(shiny)

summary_tab <- tabPanel(
  tags$span(class = "tab", "Summary"),
  titlePanel("Summary"),
  tags$br(),
  mainPanel(tags$div(class = "text",
    tags$span(tags$b("Caveat"), ": Our data is obviously not comprehensive and
              more analysis is definitely required for conclusive results.
              However, based on our analysis in this study, these are some
              suggestions to take away."),
    tags$br(),
    tags$br(),
    tags$br(),
    tags$p(class = "takeaway", "1) Perhaps better broadband quality does not
           necessarily improve education as much as most people would assume.
           Based on all of our measures, our analysis does not adequately
           indicate that broadband quality improves academic results. This is a
           tentative theory that can be further tested. If more analysis
           confirms it, then that could perhaps change educational policy in a
           radical way by lowering the emphasis on broadband in school."),
    tags$br(),
    tags$br(),
    tags$p(class = "takeaway", "2) All school subjects seem to be similarly
           unaffected by broadband quality. There was not a single subject in
           our analysis that heavily deviated from other subjects in terms of
           correlation with broadband quality. Better broadband quality does not
           seem to heavily facilitate or hinder performance in any particular
           subject. It would be interesting to test a subject such as computer
           science."),
    tags$br(),
    tags$br(),
    tags$p(class = "takeaway", "3) All grade levels seem to be similary
           unaffected by broadband quality. We initially thought broadband would
           be better utilized by more mature and sophisticated high school
           students. However, our analysis shows that the effect of broadband is
           similar for both middle schoolers and high schoolers."),
    tags$br(),
    tags$br(),
  ))
)
