# Broadband Effect on Education

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
Education is fundamental to our growth whether it’s done in a classroom setting or in our homes. As our society gravitates towards a technology-based empire, broadband must grow with our needs to prevent unbalanced progress. During the pandemic, this was highlighted when children were left to study at restaurants and parking lots with free Wi-Fi. The prevalent imbalance showcased the privilege of having expendable income for broadband and having access to reliable broadband. Our primary focus is on students and their academic progress in the year 2011-2012 and our broadband data is from 2016. We will analyze broadband access within the different geographic areas within the US and see if there’s a correlation between student academic growth and broadband access.

### Design Situation

- **Project Framing**:

  Education enables individuals to build more prosperous lives and societies to achieve economic prosperity. In the modern world, education is closely intertwined with the Internet. The Internet enhances the educational experience in innumerable ways: it provides a wealth of information, increases opportunities for learning, and provides powerful tools to support the learning experience (Internet Society, 2017). 	

  However, the Internet’s educational benefits inherently create a disparity between students who have Internet access and those who do not. Not every student has equal access to the Internet. While an impressive 99 percent of US public schools have access to the Internet (NCES, n.d.), many developing nations struggle to provide even a traditional classroom education. In his book Outliers, author Malcolm Gladwell describes the biblically eponymous “Matthew Effect”- advantages compound gains while disadvantages compound losses (Gwinn, 2008). In the same vein, students with Internet access will further their education, while those with minimal access will fall behind. This snowball effect can widen social and economic disparities amongst nations, social classes, and other groups.



- **Human Values:**:

  + *Equality*:

    The Internet’s disparate impact on education is fundamentally a matter of equality. Varying levels of Internet access inherently create unequal learning environments, which results in unequal future opportunities. The main goal is to bridge this educational gap.

  + *Opportunity / Well-being*:

    Students with minimal access to the Internet are likely to have worse educational experiences and thus lesser future opportunities than their peers. We should aspire to provide them the opportunity to have an Internet-based education.

  + *Value Tensions*:

    In order to seek equality in education, we should ideally provide opportunities to students with minimal Internet access. However, it is possible to seek equality in the opposite direction - by denying the Internet from students currently utilizing it. This may result in more equality, but lessen opportunities for the bereft students and compromise their well-being.


- **Direct Stakeholders:**

  + *Educational Institutions*:

    Educational institutions are ultimately responsible for providing their students the best education possible. If data unequivocally proves that Internet access is indispensable to a superb education, they will be incentivized to provide Internet access to their students.

  + *Education Rights Groups*:

    These organizations have a mission to make education accessible. If a lack of Internet access renders traditional education obsolete, then these organizations will strive to make Internet-based education accessible.



- **Indirect Stakeholders:**

  + *Underprivileged Students*: Internet access will improve their quality of education and provide better future opportunities.

  + *Society*: If Internet access bolsters more students’ education, then economic output will increase in the long run.

  + *Families*: They would be able to see one their own members receive quality education.

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

### The Dataset
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
In the history of education, having access to the internet has never been so critical. Teachers are increasingly turning to cloud-based learning management systems, such as Canvas, for the purpose of delivering and collecting assignments. This puts students without reliable access to the internet at a serious disadvantage. Not only are they unable to submit deliverables, but they also lack access to other online learning sources such as YouTube and Khan Academy. Broadband programs that provide students with a reliable internet connection can be funded by the government to address this inequity issue in education. Internet providers that want to invest in the future can offer students discounts on certain speeds. Internet companies can also upgrade or replace fiber optic cables in certain areas to improve broadband speed.

### Limitations
Our dataset of the performances of students by location is from 2011, and technology and its use in education has changed a lot since then. This posses a limitation, as the presence or extent of the disparity in education between areas based on broadband access may not be seen. This may be addressed by finding more data, but it may be something that we have to accept and address in our report. Our broadband data is also from 2016, so the state of access may have been different in 2011. Another limitation is the measurement of quality of education. Our data uses standardized testing, which although standard, may not accurately measure the performance of students and the quality of their education. Additionally, any trend between broadband access and education may be due to correlation rather than causation. Areas with more broadband access are likely to be wealthier and more urban, thus are likely to also have a higher budget for schooling. This means areas with greater access may have better performance in education due to better textbooks and teachers rather than their access to the internet.

### Acknowledgements
We recognize Local Point for giving us our code name and selling food overpriced food that prompted us to examine the notion of accessibility.

### References

Gwinn, M. A. (2008, November 12). Malcolm Gladwell dissects success in "Outliers". The Seattle Times. Retrieved February 4, 2022, from https://www.seattletimes.com/entertainment/books/malcolm-gladwell-dissects-success-in-outliers/

Internet Access and Education: Key considerations for policy makers. Internet Society. (2017, November 20). Retrieved February 4, 2022, from https://www.internetsociety.org/resources/doc/2017/internet-access-and-education/

Office of Elementary and Secondary Education. (2016). EDFacts Assessment, 2011-12 [CSV]. Retrieved from https://catalog.data.gov/dataset/edfacts-assessment-2011-12

Riaz, Humza. (2018). Area Table June2016 [CSV]. Retrieved from https://opendata.fcc.gov/Wireline/Area-Table-June2016/nb5q-gkcn

Riaz, Humza. (2019). Geography Lookup Table [CSV]. Retrieved from https://opendata.fcc.gov/Wireline/Geography-Lookup-Table/v5vt-e7vw

School Connectivity. National Center for Education Statistics. (n.d.). Retrieved February 4, 2022, from https://nces.ed.gov/pubs2002/internet/3.asp

### Appendix A:
No questions at this time.
