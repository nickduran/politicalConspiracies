The Hidden Appeal of Political Conspiracies (Journal of Experimental and Social Psychology)
===================

R Notebook tutorials of statistical procedures, including all R code, used to conduct analyses reported in Duran, Nicholson, and Dale (accepted, JESP). Also included is the complete dataset used to perform statistical tests and to derive descriptives. 

Data (deidentified):
===================

1) Complete data set that contains all variables necessary for replicating reported analyses and descriptives. 

> **Relevant File:**
> - Mouse-Traj-2GIT.csv

Explanation for each column and codes:

> - Column A: **subjnum**: Subject number 
> - Column B: **age**: Age of subjects
> - Column C: **sex**: 1 = male, 2 = female
> - Colmnn D: **trialnum**: Order of trials 
> - Column E: **questionType**: Numeric identification code given to each unique statement 
> - Column F: **resp_type**: Was statement a general knowledge item (Gen Knowledge), Bush item (Left-wing), Obama item (Right-wing), or general conspiracy (Gen Conspiracy)?
> - Column G: **poliID2**: Did participant identify as Republican or Democrat? 
> - Column H: **explicit**: Was statement worded in Direct (Reject as False) or Indirect (Accept as True) terms?
> - Column I: **endorse**: Was statement a general knowledge item (K), answered to endorse a conspiracy ("C"), answered to disavow a conspiracy (NC)
> - Column J: **condition**: Was statement a general knowledge item (GEN) or critical item (CRIT; i.e., an item that involved an opportunity to answer as endorsing or disavowing a potential conspiracy)
> - Column K: **topic**: Redundant with resp_type; Was statement a general knowledge item (GK), Bush item (BO), Obama item (BO), or general conspiracy item (GC)
> - Column L: **variable**: dependent variables; choice = Likert-confidence score, tottm = total time, latency = latency time, avgdeviat = average deviation
> - Column M: **value**: score for each of the variables

R Analyses Code: 
===================

Each file contains the sequence of steps in R to generate the linear mixed effects models reported in manuscript for the average deviation, latency, and confidence variables, using data from Mouse-Traj-2GIT.csv described above. Allows for complete replication.

> **Relevant Files:**
> - analysis_avgdeviat.Rmd 
> - analysis_latency.Rmd
> - analysis_confidence.Rmd

A collection of helper function files used in the above code for reporting analyses.

> - summary_stats.R

R Analyses Code (Executed):
===================

Similiar to .Rmd files provided above, but with output of all commands displayed to correspond with data reported in the manuscript. 

> **Relevant Files:**
> - http://dynamicog.org/poliConsp/analysis_latency.html
> - http://dynamicog.org/poliConsp/analysis_deviation.html
> - http://dynamicog.org/poliConsp/analysis_confidence.html

R Code For Descriptives: 
===================

R Code used to generate summary statistics and reported descriptives. 

> **Relevant File:**
> - responseTrends.Rmd

Misc: Response to Action Editor  
===================

A response to the action editor in the review process that provides rationale and interpretation for the statistical analysis in the manuscript using R and R Markdown. Commented throughout.  

> **Relevant File:**
> - http://dynamicog.org/poliConsp/AE_analysis.html






