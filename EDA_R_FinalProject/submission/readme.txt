This document describes the data set used in my final project.
The data originated as below:

WA DOH employees generously assembled3 data sets for my project for school years 2011-2012, 2012-2013, and 2013-2014. The 2011-2012 set is the most comprehensive in terms of school covered and relevant fields. Each data set contains an observation about a school. The 3 data sets were bound into one data set, then explored.


The initial data and cleaning/assembly of the combined data frame can be found here:
[githubrepo](https://github.com/baumanab/EDA_R_Udacity/tree/master/EDA_R_FinalProject/EDA_R_FinalProject.Rmd)

Additional cleaning and wrangling can be found here:
[githubrepo](https://github.com/baumanab/EDA_R_Udacity/blob/master/EDA_R_FinalProject/EDA_R_FinalProject_WADOH_DataFrameWrangle.Rmd)

An initial exploration and some additional corrections for student enrollment, is here:
[githubrepo](https://github.com/baumanab/EDA_R_Udacity/blob/master/EDA_R_FinalProject/WADOH_DataExplore.Rmd)





Features:  Each row is an observation about a school, so each feature per row is respective of an individual school

{school_year: beginning year of shool year             
school_code: unique identifier of school from WA Office of the Superintendent of Public Instruction (OSPI)            
school_name: Name of school           
school_type: type of school           
school_city: city in which school is located          
school_state: state in which school is located           
school_zip:  zip code             
school_county: county in which school is located           
school_district: school district school belongs to        
district_code: OSPI code for school district           
grade_levels:  grade levels at school     
reported: did the school report vaccination data?             
enrolled: number of students enrolled               
total_exemptions:  total number of vaccine exemptions       
medical_exempt: total exempt for medical reasons         
personal_exempt: total exempt for personal reasons      
religious_exempt: total exempt for religious reasons      
exempt_DTTd: total exempt for DTTd vaccine
exempt_pertussis: total exempt for pertussis vaccine      
exempt_polio: total exempt for polio vaccine    
exempt_MMR: total exempt for MMR vaccine             
exempt_hepB: total exempt for hepatitus B vaccine             
exempt_varicella: total exempt for the pertusis vaccine

#note on percentages:  All percentages represent total/enrollment * 100.
# So it is a total population rate (percent of total population for that school)

percent_exempt_DTTd:  percent exempt DTTd vaccine     
percent_exempt_pertussis: percent exempt pertussis vaccine
percent_exempt_polio: percent exempt polio vaccine
percent_exempt_MMR:  percent exempt MMR vaccine
percent_exempt_hepB: percent exempt hepatitus B vaccine    
percent_exempt_varicella: percent exempt varicella vaccine
percent_exempt: total percent of students who are exempt from vaccines

#Non-medical exempt was created by combining religious and personal exemptions

nonmedical_exempt: total students exempt for non-medical (personal or religious) reasons   

#Like those above, the following percentages are for total population.  They represent perentage of
#their respective exemption for the total number of student enrolled per school.  They do not represent
#a proportion of those exempt.

percent_nonmedexempt: total percent of students who are exempt from vaccines for non-medical (personal or religious) reasons      
percent_medical_exempt: total percent of students who are exempt from vaccines for medical reasons 
}
