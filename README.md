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

![Final Plots and Summary](http://seattalytics.com/EDA_R_FinalProject_FinalPlots_Summary.html)

