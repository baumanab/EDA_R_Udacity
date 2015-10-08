Exploration of WA DOH School Exemption Data over 3 School Years
==========================================================================

## Introduction ##
Recent news media coverage and my own personal interest inspired me to explore a school vaccination data set for WA state. WA DOH employees generously assembled 3 data sets for my project for school years 2011-2012, 2012-2013, and 2013-2014. The 2011-2012 set is the most comprehensive in terms of school covered and relevant fields. Each data set contains an observation about a school. The 3 data sets were bound into one data set, then explored.

There are some aspects of vaccination and the spread of disease through populations that are best left to subject matter experts. I consulted CDC publications throughout this analysis and I encourage the reader to do the same.

For example, what is the vaccination rate threshold that should not be exceeded to maintain herd immunity? This is complex question. A typical answer is 10%. There are assumptions made regarding mixing of populations and how fast a contagion spreads. This is even more complex in the context of school data where there is a wide range of populations and students may come from a large geographical area. The latter is particularly true of private schools where students may not necessarily live within a specific geographical region.

In regards to spread of disease, some disease are more contagious than others and have a range of opportunities for exposure. For example, while Hep B is fairly contagious (~ 100 X times HIV), since it is blood-borne, the opportunity for exposure is less than something like the common cold. Measles is particularly contagious with a high exposure opportunity and inforomation available from the CDC suggest that vaccination rates <= 95% pose a risk. Bear is mind that this is factoring in that not all those vaccinated will actually be immune, so even at 100% exemption rate, 100% immunity would not be expected.

For the purposes of this analysis, I set the outbreak risk thresholds at 90% for general vaccination rates and 95% for MMR. That translates to 5% exempt for MMR and 10% exempt general.

### Reports ###

**Source code and project reports can be found here:** [source](https://github.com/baumanab/EDA_R_Udacity/tree/master/EDA_R_FinalProject)

**The knitted html file for my project EDA is here:** [final project html](http://seattalytics.com/EDA_R_FinalProject_Submission.html) and the source here:[final project rmd](https://github.com/baumanab/EDA_R_Udacity/blob/master/EDA_R_FinalProject/EDA_R_FinalProject_Submission.Rmd)

Since the html file is large, I broke it into three sections:

1. [Introduction and Univariate Analysis](seattalytics.com/EDA_R_FinalProject_Intro_UnivariatePlots.html)

2. [Bivariate Analysis](http://seattalytics.com/EDA_R_FinalProject_BivariatePlots.html)

3. [Multivariate Analysis](http://seattalytics.com/EDA_R_FinalProject_MultivariatePlots.html)

4. [Final Plots and Summary](http://seattalytics.com/EDA_R_FinalProject_FinalPlots_Summary.html)


### Data Munging ###

The initial data and cleaning/assembly of the combined data frame can be found here: [data_wrangle_1](https://github.com/baumanab/EDA_R_Udacity/blob/master/EDA_R_FinalProject/EDA_R_FinalProject.Rmd)

Additional cleaning and wrangling can be found here: [data_wrangle_2](https://github.com/baumanab/EDA_R_Udacity/blob/master/EDA_R_FinalProject/EDA_R_FinalProject_WADOH_DataFrameWrangle.Rmd)

An initial exploration and some additional corrections for student enrollment, is here: [data_wrangle_3](https://github.com/baumanab/EDA_R_Udacity/blob/master/EDA_R_FinalProject/WADOH_DataExplore.Rmd)

The current state is a rough approach and far from perfect. I plan to revisit this as I discover additional elements that need cleaning. I am currently working on a more readable and organized version of the data wrangling using piping, so that changes are easy to make and push to the .rds file called as data for this project.

## Final Plots and Summary ##


### Plot One

![](https://github.com/baumanab/EDA_R_Udacity/blob/master/EDA_R_FinalProject/img/final_plot_one.png)



    ## 
    ##  Pearson's product-moment correlation
    ## 
    ## data:  vaccReported_NGT50_exemptrate$percent_exempt and vaccReported_NGT50_exemptrate$percent_medical_exempt
    ## t = 30.3715, df = 6681, p-value < 2.2e-16
    ## alternative hypothesis: true correlation is not equal to 0
    ## 95 percent confidence interval:
    ##  0.3270622 0.3691997
    ## sample estimates:
    ##       cor 
    ## 0.3483069

    ## 
    ##  Pearson's product-moment correlation
    ## 
    ## data:  vaccReported_NGT50_exemptrate$percent_exempt and vaccReported_NGT50_exemptrate$percent_nonmedexempt
    ## t = 292.7415, df = 6681, p-value < 2.2e-16
    ## alternative hypothesis: true correlation is not equal to 0
    ## 95 percent confidence interval:
    ##  0.9613855 0.9648553
    ## sample estimates:
    ##       cor 
    ## 0.9631604

    ## 
    ##  Pearson's product-moment correlation
    ## 
    ## data:  vaccReported_NGT50_exemptrate$percent_exempt and vaccReported_NGT50_exemptrate$percent_exempt_MMR
    ## t = 116.7002, df = 6681, p-value < 2.2e-16
    ## alternative hypothesis: true correlation is not equal to 0
    ## 95 percent confidence interval:
    ##  0.8110272 0.8268150
    ## sample estimates:
    ##       cor 
    ## 0.8190762



### Description One

Summary of specific exemption rates vs total exemption rate for counties in Washington State. Total exemption rate is defined as the number of students per county, exempt from any vaccine, per 100 students. A specific exemption rate is the number of students exempt from a vaccine, per 100 students, respective of the vaccine type (MMR etc.) or the reason for exemption (medical, non-medical). Specific rates (% medical, non-medical, and MMR exemption) vs. total percent exempt for schools with <= 50% total exemption, with smoothing lines per school year. Medical exemption rates do not have strong correlation (Pearson’s ~.35) with total exemption rates whereas non-medical(Pearson’s ~.96) and MMR exemption rates (Pearson’s ~.82) do. The correlation of non-medical exemption rates with the total exemption rate is stronger than that of MMR rates. There is very little change in the smoothing lines and degree of correlation from year to year.


### Plot Two

![](https://github.com/baumanab/EDA_R_Udacity/blob/master/EDA_R_FinalProject/img/final_plot_two.png)



### Description Two

Summary of them mean exemption rate per Washington state county. The exemption rate is defined as the number of students per county, exempt from any vaccine per 100 students. Mean percent exemption rate per county, ordered by student population (# of students enrolled), for the school year 2013 and schools with 10-2500 total students. The gradient color scale represents mean % exempt MMR for each county. Neither mean total or MMR exemption rates cut by student population. Schools with higher total exemption rates tend to have higher MMR exemption rates, consistent with plot one.

## Plot Three ##

![](https://github.com/baumanab/EDA_R_Udacity/blob/master/EDA_R_FinalProject/img/final_plot_three.png)


### Description Three

Summary of the mean exempton rate for Washington state for the top quartile of mean vaccine exemption rates and the proportion of exemptions by type (medical or non-medical). The exemption rate is defined as the number of students per county, exempt from any vaccine per 100 students. Mean exemption rate and proportion of percent exempt by exemption type for counties in quartile four (top 25% of mean exemption rates), along with the affected student populaation. A red shade is used to show the area at and beyond what is generally considered the threshold for herd immunity. 6 counties for the top quartile are at or beyond the 10% herd immunity threshold, while 4 are below it. The vast majority of exemptions for each county are non-medicalexemptions, also known as personal belief exemptions.

**It is important to note that herd immunity thresholds are based on specific assumptions which include opportunity for exposure, how contageous a disease is, and population mixing. These may not apply evenly for all schools. Measeles in highly contagious with a large opporutnity for exposure relative to say Hep B. Esitmates for measles put a safe level of exemption closer to 5%.**

* * *

# Reflection

This has been an interesting project. My original intent was to use the zip code data and data from the US Census Bureau (economic and demographic data down to the tract level) and the WA state government (demographic data at the school level), to explore school vaccine exemptions and exemption rates. Cleaning and tidying the data set for this purpose was daunting, but enjoyable. As a step towards my original intent, I decided to start exploring the data to develop a better understanding of the set and how exemption rates varied by type, year, student population etc. What I found was that I had a rich data set all on its own. I was able to view the high level of variance in the data, particuarly associated with school size, as well as how types of exemptions and types of schools were contributing to exemption rates. I made some surprising findings:

*   Populous counties with large urban centers do not have unusually high vaccine exemption rates at the county level. This appears to be the domain of smaller, rural counties.
*   MMR vaccine exemption rates do not track 1:1 with total vaccine exemption rates, it appears that people are choosy with vaccines.
*   There is some variation of exemptions by school type but not as dramatic as expected. I think this is partially because I have lumped all private schools into one bin, but no tall private schools are alike. Parsing the brand or types of private schools may be informative.
*   Exemption rates have low variability from year to year.

and some less than surprising findings:

*   Non-medical exemptions occur at a much higher rate than medical exemptions
*   Non-medical exemption rates have a strong correlation with total exemption rates

In general, the body of scientific evidence suggests that vaccine exemption rates below 5-10% (depending on disease attributes) puts the non-immune population (no natural immunity and low resitance and have not received vaccine or the vaccine was not effective) at risk. In WA state, the vast majority of exemptions are personal belief (non-medical) exemptions. At the county level there are 6 counties with mean exemption rates exceeding 10% with even more exceeding the 5% MMR threshold.

Now that I have a solid understanding of the underlying data I would like to do the following as next steps.

*   Audit the data set again to remove any errors, especially with regards to number of students enrolled at a school
*   Explore the data at the district, city, and zip code level, to see how my observations at the county level compare.
*   Create economic and demographic data tables for later combination with a subset of the vaccine exemption data (likely city and zip code level) to see what relationships between and amongst variables with respect to exemption rates.

I also plan to revisit the data set containing other disease exemption data to see how each of those varies with total exemption rate and get a better idea of what diesease people are not being vaccinated for at specific geographical levels.


# References

*   Udacity Forums and Coaches Lounge

*   [Hadley Wikhams Tidy Data manuscript and associate vignette](https://github.com/hadley/tidy-data)

*   [Quick R](http://www.statmethods.net/)

*   R for Dummies

*   [Cookbook for R](http://www.cookbook-r.com/)

*   R Cookbook by Paul Teetor (O’Reilly)

*   [Kieran Healy’s Github Repo](https://github.com/kjhealy/vaccines-ca/blob/master/vaccines.r)

*   Stack Overflow

*   [R Bloggers](http://www.r-bloggers.com)

*   [R Studio Cheat Sheets](http://www.rstudio.com/resources/cheatsheets)
