# Broadband Effect on Education


**TODO**: Edit this file. Your project proposal goes here. Save and delete the developer notes when done.

## Developer Notes

* **Where is the project brief?**  [`../instructions/project-design-brief.pdf`](../instructions/project-design-brief.pdf).
* **Making Progress**: We understand this work might be difficult. Also, we understand that your project ideas might not be completely worked out. So, we ask that you do the best you can. You will receive specific guidance from your TA and constructive feedback. We are confident that you will succeed!
* **What should be included in the proposal?** Every proposal will be different. It depends on your particular project.  That said, in the table below you will find the expected report elements.  It is important that you engage with and respond to the the Design Brief.
* **How should the proposal be formatted?** You should format your proposal using Markdown in this file. You should aim for a professional presentation - clear, concise, interesting, and free of spelling and grammatical errors.
* **What headings should we use?** As needed, the suggested headings below can be revised and new headings and sub-headings can be added. Please use headings, bullet lists, tables, figures, and other markdown code effectively - seek a professional presentation.
* **Finishing up.** When you are finished writing and formatting your proposal, save these developer notes(they might useful in the future). Then, delete them.
* **Questions?** If you have questions, please ask your TA or post on Teams.

### Code Name:
**Clowny-Cloud-Fish**

### Project Title:
**Broadband Effect on Education**

### Authors:
**Nick Vaughn, Daniel Lee, Hanna Lee, John Nguyen**

### Affiliation:
**INFO-201: Technical Foundations of Informatics - The Information School - University of Washington**

### Date:
**February 4th, 2022**

### Abstract
We are concerned with inequity in students having broadband access because it may disadvantage many students as education relies more on technology. To address this concern, we plan to analyze multiple datasets on student performance in different subjects and see if there is a correlation between their performance and broadband access.

### Keywords
1. Broadband
2. Equitable Education
3. Accessibility

### Introduction


### Design Situation (Daniel)

- **Project Framing**:

  Education enables individuals to build more prosperous lives and societies to achieve economic prosperity. In the modern world, education is closely intertwined with the Internet. The Internet enhances the educational experience in innumerable ways: it provides a wealth of information, increases opportunities for learning, and provides powerful tools to support the learning experience (Internet Society, 2017). 	

  However, the Internet’s educational benefits inherently create a disparity between students who have Internet access and those who do not. Not every student has equal access to the Internet. While an impressive 99 percent of US public schools have access to the Internet (NCES, n.d.), many developing nations struggle to provide even a traditional classroom education. In his book Outliers, author Malcolm Gladwell describes the biblically eponymous “Matthew Effect”- advantages compound gains while disadvantages compound losses (Gwinn, 2008). In the same vein, students with Internet access will further their education, while those without access will fall behind. This snowball effect can widen social and economic disparities amongst nations, social classes, and other groups.



- **Human Values:**:

  + *Equality*:

    The Internet’s disparate impact on education is fundamentally a matter of equality. Varying levels of Internet access inherently create unequal learning environments, which results in unequal future opportunities. The main goal is to bridge this educational gap.

  + *Opportunity / Well-being*:

    Students without access to the Internet are likely to have worse educational experiences and thus lesser future opportunities than their peers. We should aspire to provide them the opportunity to have an Internet-based education.

  + *Value Tensions*:

    In order to seek equality in education, we should ideally provide opportunities to students with minimal Internet access. However, it is possible to seek equality in the opposite direction - by denying the Internet from students currently utilizing it. This may result in more equality, but lessen opportunities for the bereft students and compromise their well-being.


- **Direct Stakeholders:**

  + *Educational Institutions*:

    Educational institutions are ultimately responsible for providing their students the best education possible. If data unequivocally proves that Internet access is indispensable to a superb education, they will be incentivized to provide Internet access to their students.

  + *Education Rights Groups*:

    These organizations have a mission to make education accessible. If a lack of Internet access renders traditional education obsolete, then these organizations will strive to make Internet-based education accessible.



- **Indirect Stakeholders:**

  + *Underprivileged Students*: Any efforts at making Internet-based education accessible will directly benefit them.

  + *Society*: If Internet access bolsters more students’ education, then economic output will increase in the long run.

  + *Families*: They would be able to see one of their members receive a quality education.

  + *Privileged students*: If other students are granted an Internet-based education, this may increase academic competition for the incumbent privileged students.


- **Benefits:**

  1. We may establish equality in education and welfare amongst people.

  2. We can create more educated citizens, which in turn will lead to increased economic output and a more well-functioning society in the long run.


- **Harms:**

  1. While Internet access would provide opportunities to underprivileged students, the incumbent privileged students would likely suffer from higher competition.

  2. Organizations may decide to limit Internet access to students who already have it. This is fairly easy to implement since it involves taking resources away rather than providing them. However, this would harm the education of students already benefiting from Internet access and may indirectly impact society as a whole.


### Research Questions
1. Does having limited broadband access have an impact on academic performance?
2. Does the internet impact math performance differently compared to reading?
3. Is there a connection between academic performance, urban, and rural areas?

### The Dataset (Hanna)
- **2011-2012 ED Facts Assessment of Reading**
  -	16,060 observations and 228 variables
  -	This is a reading assessment of students in some districts throughout the country from 3rd grade to high school.
  -	The dataset gives a comprehensive view of the reading assessments in most grades at each state. It provides an insight into the scores based on race, gender, financial standing, disability, English proficiency, and migrant status. Parental education data could be included to provide further insight into student performance.
  -	This dataset by the Department of Education was compiled in 2012.
    - The assessment was given by local education agencies, which is stated as a variable.
    - This was a government-funded assessment. Each state designed its exams, and federally run organizations compiled the data.
    -	This dataset can be used to fund education programs or initiate bills to aid students in their academic efforts.
  -	ED conducted quality checks with each state to verify the data. If something was missing or questionable, they conferred with the state to reexamine the data. They listed all anomalies within their findings.
  -	I found this dataset through Data.gov. The citation is listed in References.
- **2011-2012 ED Facts Assessment of Math**
  -	16,061 observations and 228 variables
  -	This is a math assessment of students in some districts throughout the country from 3rd grade to high school.
  -	The observations are the same as the reading assessment except it covers math in each observation.
  -	The collection methods, purpose, funding, and benefits are the same as the reading assessment because it is from the same source and data compilation. EDFacts separated the reading and math findings due to the different subjects.
  -	The math assessment was handled with the same care and scrutiny as the reading assessment. Therefore, we find it credible.
  -	This is the same source as the previous assessment and the citation is listed in References.
- **June 2016 FCC Area Table**
  - 178,992 observations and 7 variables
  - The dataset shows the broadband coverage in geographic areas throughout the country.
  - Each observation reveals the type of area, ID of area, the technology of broadband, urban/rural, tribal/nontribal, download speeds, and the number of providers. We don't see the average price or who the providers are.
  - It is unclear who collected the data, but the owner is Humza Riaz. It was created on March 18, 2018 and reveals the general broadband accessibility in this country.
    -	This is raw data from the FCC's broadband website which has an interactive map feature that tracks various points of broadband usage in the country.
    - The origin of funding is unclear, but FCC is part of the federal government.
    - This data can allow for greater accessibility to broadband or highlight price gouging to users in rural areas.
  - The data was collected through surveys and public broadband information. It is credible since it's reporting hard data, but surveys are never 100%.
  - We found this dataset through Data.gov. The citation is listed in references.
- **2020 FCC Geography Lookup**
  -	22,514,373 observations and 10 variables
  - This was our reference guide for the FCC Area Table because the ID of Area was coded as a number.
  -	Since this was our decoder and only stated the longitude, latitude, and name of the area, we did not question the validity of the data.
  - The table was updated on April 8, 2021.
  -	We found this dataset through Data.gov. The citation is listed in references.


### Expected Implications
Having access to an internet connection has never been so crucial in the history of education. As more teachers begin to utilize cloud-based learning management systems, such as Canvas, to hand out and collect assignments, students who do not have a reliable connection to the internet are at a major disadvantage. They are unable to submit deliverables and their grades will suffer as a result. To address this inequity issue in education, the government can fund broadband programs that will provide students with a reliable internet connection. Internet providers who wish to invest in the future can provide students with discounts for certain internet speeds.  Internet companies can also upgrade or replace fiber optic cables in certain areas to improve broadband speed.

### Limitations
Our dataset of the performances of students by location is from 2011, and technology and its use in education has changed a lot since then. This posses a limitation, as the presence or extent of the disparity in education between areas based on broadband access may not be seen. This may be addressed by finding more data, but it may be something that we have to accept and address in our report. Another limitation is the measurement of quality of education. Our data uses standardized testing, which although standard, may not accurately measure the performance of students and the quality of their education. Additionally, any trend between broadband access and education may be due to correlation rather than causation. Areas with more broadband access are likely to be wealthier and more urban, thus are likely to also have a higher budget for schooling. This means areas with greater access may have better performance in education due to better textbooks and teachers rather than their access to the internet.

### Acknowledgements
Acknowledge local point for giving us our code name and selling overpriced food

### References (Hanna)

https://nces.ed.gov/pubs2002/internet/3.asp

https://www.seattletimes.com/entertainment/books/malcolm-gladwell-dissects-success-in-outliers/

https://www.internetsociety.org/resources/doc/2017/internet-access-and-education/

### Appendix A:

|Element | Brief Description|
|---------------| --------------
|Code name | Give your project a _code name_, a short, evocative name for efficiently referring to your project. Your code name does not change! Examples: _Jazz-4_, _Rocking Fish_, etc. |
|Project title| Give your project a concise, interesting title that summarizes the entirety of your project. (Your title can change on subsequent deliverables.) |
|Authors | Names of your team members and contact information (email addresses). |
|Affiliation |  INFO-201: Technical Foundations of Informatics - The Information School - University of Washington |
|Date | Winter 2022|
|Abstract | No more than three sentences that summarize your project. Focus on the very most important aspects. For example: **(1)** "Our main question is .... This question is important because .... To address the question, we will ...." **(2)** "We are concerned with ..., becuase .... To address this concern, we plan to ...." **(3)** "Consider that ....  This is important because .... Accordingly, we plan to ...."   |
|Keywords | 3-5 keywords that summarize your project.  (e.g., "Keywords: human physiology; bicycle exercise; elderly; power and heart rate times-series data") |
|1.0 Introduction | Briefly introduce your project. (about 150 words) |
|2.0 Design Situation | Use short sub-sections to describe your topic and the setting (that is, the sociotechnical situation), including project framing, human values, direct and indirect stakeholders, possible harms and benefits. See the Design Brief, section B.3. **Note**: You *must* include three citations to related work (URLs to similar work, high quality articles from the popular press, reseach papers, etc. ). You may find it helpful to include a figure.  (about 400 words) |
|3.0 Research questions | 3-5 research questions. What motivates the questions? Why are they important? See the Deign Brief, section B.4. (about 150 words) |
|4.0 The Dataset | See Design Brief, setions B.5 (_Size and complexity_) and B.6 (_Data provenance_). Use short sub-sections for describing the size and complexity of the dataset and for describing the origins fo the data. (about 400 words) |
|5.0 Expected Implications | Assuming you answer your research questions, briefly describe the expected or possible implications for technologists, designers, and policymakers. (about 150 words) |
|6.0 Limitations | What limitations might you need to address? Briefly discuss. (about 150 words) |
|Acknowledgements | Is there anyone you would like to thank? A librarian who helped you with your research? A Teaching Assistant? A friend who helped you find your data? Say thank you in this section.|
|References | Include citations to your three references. See 2.0 Introduction. If you like, you can cite more than three references.  Please use a standard citation style of your choice.  See [Citing Sources](https://guides.lib.uw.edu/research/citations) at the UW Library. |
|Appendix A: Questions| Do you have questions for your TA or instructor?  Include them here.|
