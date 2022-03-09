library(shiny)

report_choices <- c("Metadata", "Abstract", "Introduction", "Design Situation", 
                    "Research Questions", "Dataset", "Findings", "Discussion", 
                    "Conclusion", "Acknowledgements", "References")

report_tab <- tabPanel(
  tags$span(class = "tab", "Report"),
  titlePanel("Report"),
  sidebarLayout(
    sidebarPanel(
      width = 4,
      selectInput(
        inputId = "report_sections",
        label = "Select a Section",
        choices = report_choices
      )
    ),
    mainPanel(
      uiOutput("report_text")
    )
  )
)

meta_data <- tags$div(class = "text",
  tags$h3("Metadata"),
  tags$br(),
  "Project Title: Broadband Effect on Education",
  tags$br(),
  tags$br(),
  "Authors: Hanna Lee, Daniel Lee, Nick Vaughn, John Nguyen",
  tags$br(),
  tags$br(),
  "Affiliation: University of Washington",
  tags$br(),
  tags$br(),
  tags$span("Date: 03 / 04 / 2022"),
  tags$br(),
  tags$br(),
  "Key Words: Broadband, Equitable Education, Accessibility"
)

abstract <- tags$div(class = "text",
  tags$h3("Abstract"),
  tags$br(),
  tags$p("We are concerned with inequity in students having broadband access because it may disadvantage many students as education relies more on technology. To address this concern, we plan to analyze multiple datasets on student state assessment performance in Washington and see if there is a correlation between their performance and broadband access."),
)

introduction <- tags$div(class = "text",
  tags$h3("Introduction"),
  tags$br(),
  tags$p("Education is fundamental to our growth whether it's done in a classroom setting or in our homes. As our society gravitates towards a technology-based empire, broadband must grow with our needs to prevent unbalanced progress. During the pandemic, this was highlighted when children were left to study at restaurants and parking lots with free Wi-Fi. The prevalent imbalance showcased the privilege of having expendable income for broadband and having access to reliable broadband. Our primary focus is on students and their academic status in the school year 2016-17, and our broadband data is from 2016. We will analyze broadband access within the different geographic areas within the US and see if there's a correlation between student academic growth and broadband access.")
)

design_situation <- tags$div(class = "text",
  tags$h3("Project Framing"),
  tags$br(),
  tags$p("Education enables individuals to build more prosperous lives and societies to achieve economic prosperity. In the modern world, education is closely intertwined with the Internet. The Internet enhances the educational experience in innumerable ways: it provides a wealth of information, increases opportunities for learning, and provides powerful tools to support the learning experience (Internet Society, 2017)."),
  tags$p("However, the Internet's educational benefits inherently create a disparity between students who have Internet access and those who do not. Not every student has equal access to the Internet. While an impressive 99 percent of US public schools have access to the Internet (NCES, n.d.), many developing nations struggle to provide even a traditional classroom education. In his book Outliers, author Malcolm Gladwell describes the biblically eponymous \"Matthew Effect\"- advantages compound gains while disadvantages compound losses (Gwinn, 2008). In the same vein, students with Internet access will further their education, while those with minimal access will fall behind. This snowball effect can widen social and economic disparities amongst nations, social classes, and other groups."),
  tags$br(),
  tags$h3("Human Values"),
  tags$br(),
  tags$b("Equality"), ": The Internet's disparate impact on education is fundamentally a matter of equality. Varying levels of Internet access inherently create unequal learning environments, which results in unequal future opportunities. The main goal is to bridge this educational gap.",
  tags$br(),
  tags$br(),
  tags$b("Opportunity / Well-being"), ": Students with minimal access to the Internet are likely to have worse educational experiences and thus lesser future opportunities than their peers. We should aspire to provide them the opportunity to have an Internet-based education.",
  tags$br(),
  tags$br(),
  tags$b("Value Tensions"), ": In order to seek equality in education, we should ideally provide opportunities to students with minimal Internet access. However, it is possible to seek equality in the opposite direction - by denying the Internet from students currently utilizing it. This may result in more equality, but lessen opportunities for the bereft students and compromise their well-being.",
  tags$br(),
  tags$br(),
  tags$h3("Direct Stakeholders"),
  tags$br(),
  tags$b("Educational Institutions"), ": Educational institutions are ultimately responsible for providing their students the best education possible. If data unequivocally proves that Internet access is indispensable to a superb education, they will be incentivized to provide Internet access to their students.",
  tags$br(),
  tags$br(),
  tags$b("Education Rights Groups"), ": These organizations have a mission to make education accessible. If a lack of Internet access renders traditional education obsolete, then these organizations will strive to make Internet-based education accessible.",
  tags$br(),
  tags$br(),
  tags$h3("Indirect Stakeholders"),
  tags$br(),
  tags$b("Underprivileged Students"), ": Internet access will improve their quality of education and provide better future opportunities.",
  tags$br(),
  tags$br(),
  tags$b("Society"), ": If Internet access bolsters more students' education, then economic output will increase in the long run.",
  tags$br(),
  tags$br(),
  tags$b("Families"), ": They would be able to see one their own members receive quality education.",
  tags$br(),
  tags$br(),
  tags$b("Privileged students"), ": If other students are granted an Internet-based education, this may increase academic competition for the incumbent privileged students.",
  tags$br(),
  tags$br(),
  tags$h3("Benefits"),
  tags$br(),
  "1) We may establish equality in education and welfare amongst people.",
  tags$br(),
  tags$br(),
  "2) We can create more educated citizens, which in turn will lead to increased economic output and a more well-functioning society in the long run.",
  tags$br(),
  tags$br(),
  tags$h3("Harms"),
  tags$br(),
  "1) While Internet access would provide opportunities to underprivileged students, the incumbent privileged students would likely suffer from higher competition.",
  tags$br(),
  tags$br(),
  "2) Organizations may decide to limit Internet access to students who already have it. This is fairly easy to implement since it involves taking resources away rather than providing them. However, this would harm the education of students already benefiting from Internet access and may indirectly impact society as a whole."
)

research_questions <- tags$div(class = "text",
  tags$h3("Research Questions"),
  tags$br(),
  "1) Does limited broadband access impact on test satisfactory levels?",
  tags$br(),
  tags$br(),
  "2) Is broadband access a factor in the different test subject performance?",
  tags$br(),
  tags$br(),
  "3) Does English as a second language students performance differ based on broadband speeds?"
)

data_sets <- tags$div(class = "text",
  tags$h3("The Dataset"),
  tags$br(),
  tags$b("1) Report Card Assessment Data 2016-2017 School Year"),
  tags$br(),
  tags$br(),
  "- 951,000 observations and 30 variables",
  tags$br(),
  "- We have student state assessment data of various subjects from kindergarten to 12th grade.",
  tags$br(),
  "- The dataset has multiple identifiers for schools, breakdown of student demographics, different subjects, expected outcomes, and actual standing (satisfactory/unsatisfactory) of student grade/group.",
  tags$br(),
  "- Age of student group and various test scores were left out. Instead the dataset categorized the students as satisfactory or unsatisfactory in the subject matter",
  tags$br(),
  "- Washington Office of Superintendent of Public Instruction created the dataset on September 12, 2019. They own and update the dataset according to data.gov.",
  tags$br(),
  "- Educators and any field can make money off student data because they can create supplemental resources if they find students facing difficulties in certain subjects and tailor it to the students groups/grade having the issue.",
  tags$br(),
  "- The data is housed and hosted on a government website which provides added protection. The validity of the data is through direct student information data, so we confident in the outcomes.",
  tags$br(),
  "- We found this dataset through Data.gov. The citation is listed in references.",
  tags$br(),
  tags$br(),
  tags$b("2) June 2016 FCC Area Table"),
  tags$br(),
  tags$br(),
  "- 178,992 observations and 7 variables",
  tags$br(),
  "- The dataset shows the broadband coverage in geographic areas throughout the country.",
  tags$br(),
  "- Each observation reveals the type of area, ID of area, the technology of broadband, urban/rural, tribal/nontribal, download speeds, and the number of providers. We don't see the average price or who the providers are.",
  tags$br(),
  "- It is unclear who collected the data, but the owner is Humza Riaz. It was created on March 18, 2018 and reveals the general broadband accessibility in this country.",
  tags$br(),
  "- This is raw data from the FCC's broadband website which has an interactive map feature that tracks various points of broadband usage in the country.",
  tags$br(),
  "- The origin of funding is unclear, but FCC is part of the federal government.",
  tags$br(),
  "- This data can allow for greater accessibility to broadband or highlight price gouging to users in rural areas.",
  tags$br(),
  "- The data was collected through surveys and public broadband information. It is credible since it's reporting hard data, but surveys are never 100%.",
  tags$br(),
  "- We found this dataset through Data.gov. The citation is listed in references.",
  tags$br(),
  tags$br(),
  tags$b("3) 2020 FCC Geography Lookup"),
  tags$br(),
  tags$br(),
  "- 22,514,373 observations and 10 variables",
  tags$br(),
  "- This was our reference guide for the FCC Area Table because the ID of Area was coded as a number.",
  tags$br(),
  "-	Since this was our decoder and only stated the longitude, latitude, and name of the area, we did not question the validity of the data.",
  tags$br(),
  "- The table was updated on April 8, 2021",
  tags$br(),
  "-	We found this dataset through Data.gov. The citation is listed in references."
)

findings <- tags$div(class = "text",
  tags$h3("Findings"),
  tags$br(),
  tags$i("1) Does limited broadband access impact test satisfactory levels?"),
  tags$br(),
  tags$br(),
  tags$p("Our initial hypothesis was that limited broadband access would predictably lower test levels. We used two proxies for broadband access - internet speed and access points. We attempted to establish correlations between the two proxy variables and test levels. Our analysis resulted in slightly negative correlations, thereby opposing our hypothesis. However, there were several extenuating circumstances. First, correlation does not prove causation, and we would need further tests such as controlled experiments to confirm a causal relationship. Second, the quantity of data was a bit sparse and the strength of the correlation is therefore not as robust. Moreover, the correlation could have easily been positive if not for a couple of outliers. In short, our analysis suggests a negative correlation between broadband access and test levels, but further analysis with more data is required to conclusively support that."), 
  tags$br(),
  tags$br(),
  tags$i("2) Is broadband access a factor in the different test subject performance?"),
  tags$br(),
  tags$br(),
  tags$p("Our initial hypothesis was that limited broadband access would negatively affect test levels in all subjects, since the Internet provides helpful resources in almost any domain. We attempted to break down the correlations between having generally acceptable broadband access and test levels by specific school subjects. The correlations for five different subjects were all slightly negative or close to zero. Our analysis suggests that broadband access has minimal impact on test levels in any subject. However, we would need to analyze more datasets to conclusively support that theory."),
  tags$br(),
  tags$br(),
  tags$i("3) Does English as a second language students' performance differ based on broadband speeds?"),
  tags$br(),
  tags$br(),
  tags$p("Our initial hypothesis was that limited broadband access would severely hurt the test levels of English language learners, since it would add another handicap to their language deficiencies. We attempted to establish correlations between having generally acceptable broadband access and test levels for English language learners, further breaking it down by middle school and high school students. There were a few signs of positive correlation, but overall there are no conclusive trends in the data. Moreover, we lacked sufficient data for 9th and 12th grade high schoolers. Unfortunately, the results are inconclusive to answer the question.")
)

discussion <- tags$div(class = "text",
  tags$h3("Discussion"),
  tags$br(),
  tags$p("Insert Discussion here")
)

conclusion <- tags$div(class = "text",
   tags$h3("Conclusion"),
   tags$br(),
   tags$p("Insert Conclusion here")
)

acknowledgements <- tags$div(class = "text",
  tags$h3("Acknowledgements"),
  tags$br(),
  tags$span("We recognize Local Point for giving us our code name and selling overpriced food that prompted us to examine the notion of accessibility.")
)

references <- tags$div(class = "text",
  tags$span("Gwinn, M. A. (2008, November 12). Malcolm Gladwell dissects success in \"Outliers\". The Seattle Times. Retrieved February 4, 2022, from https://www.seattletimes.com/entertainment/books/malcolm-gladwell-dissects-success-in-outliers/"),
  tags$br(),
  tags$br(),
  tags$span("Internet Access and Education: Key considerations for policy makers. Internet Society. (2017, November 20). Retrieved February 4, 2022, from https://www.internetsociety.org/resources/doc/2017/internet-access-and-education/"),
  tags$br(),
  tags$br(),
  tags$span("OSPI. (2019). Report Card Assessment Data 2016-17 School Year [CSV]. Retrieved from https://data.wa.gov/Education/Report-Card-Assessment-Data-2016-17-School-Year/5tvk-w2c5"),
  tags$br(),
  tags$br(),
  tags$span("Riaz, Humza. (2018). Area Table June2016 [CSV]. Retrieved from https://opendata.fcc.gov/Wireline/Area-Table-June2016/nb5q-gkcn"),
  tags$br(),
  tags$br(),
  tags$span("Riaz, Humza. (2019). Geography Lookup Table [CSV]. Retrieved from https://opendata.fcc.gov/Wireline/Geography-Lookup-Table/v5vt-e7vw"),
  tags$br(),
  tags$br(),
  tags$span("School Connectivity. National Center for Education Statistics. (n.d.). Retrieved February 4, 2022, from https://nces.ed.gov/pubs2002/internet/3.asp")
)

all_report_texts <- list(meta_data, abstract, introduction, design_situation, research_questions, data_sets, findings, discussion, conclusion, acknowledgements, references)

names(all_report_texts) <- report_choices


  

