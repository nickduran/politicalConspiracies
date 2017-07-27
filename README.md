The Hidden Appeal of Political Conspiracies (Journal of Experimental and Social Psychology)
===================

R Notebook tutorials of statistical procedures, including all R code, used to conduct analyses reported in Duran, Nicholson, and Dale (accepted, JESP). Also included are the complete datasets used to perform statistical tests and to derive descriptives. 

Data (deidentified):
===================

> **Relevant Files:**
> - synchronyMovementRapp.csv

1) File contains WLCC scores for each time lag, as well as rapport scores. Explanation for each column and codes:
> - Column A: Real vs Virtual Pairs; 1 = Real, 2 = Virtual 
> - Column B: Dyad number
> - Colmnn C: Order of deceptive conversation; 2 = First, 3 = Second
> - Column D: Did conversation involve deception or not; 0 = No Deception, 1 = Deception
> - Column E: Did conversation involve conflict or not; 1 = Disagreement, 2 = Agreement
> - Column F: Body region of Participant 1 analyzed: 1 = head/shoulders, 3 = mid-thigh/feet 
> - Column G: Body region of Participant 2 analyzed: 1 = head/shoulders, 3 = mid-thigh/feet
> - Column H: Sex
> - Column I: Topic of conversation (varies across 10 possible topics)
> - Column J: Average response between participants to question "I felt very close to my partner"
> - Column K: Average response between participants to question "I felt that my partner understood what I was saying"
> - Column L: Average response between participants to question "I felt that I understood what my partner was saying"
> - Column M: Same as K, but absolute difference between participants
> - Column N: Same as L, but absolute difference between participants
> - Column O: Same as M, but absolute difference between participants
> - Columns P-BX: lagged differences between participants' movements (at increments of 1/6 of a second up to 5000ms), values in each cell correspond to WLCC scores, positive lags correspond to DA following and negative lags correspond to Naive following 

R Analyses Code: 
===================

> **Relevant Files:**
> - analysis_avgdeviat.Rmd, analysis_latency.Rmd, analysis_confidence.Rmd, summary_stats.R

1 and 2) For analysis_avgdeviat.Rmd and analysis_latency.Rmd, notebooks... runs the analyses described in the Mixed Effects Models section of paper, using data from synchronyMovementRapp.csv and synchronySpeechRapp.csv described above. The sequence of steps taken in R to generate the results reported in the manuscript for each of the three dependent variables (latency, average deviation, and confidence scores).

3): 

4): For summary_stats.R: Helper functions for reporting analyses

R Analyses Code (Executed):
===================

> **Relevant Files:**

> - http://dynamicog.org/poliConsp/analysis_latency.html
> - http://dynamicog.org/poliConsp/analysis_deviation.html
> - http://dynamicog.org/poliConsp/analysis_confidence.html

R Code For Descriptives: 
===================

> **Relevant Files:**
> - responseTrends.Rmd

R Code used to generate summary statistics and all descriptives

Misc: Response to Action Editor  
===================

> **Relevant Files:**
> - AE_analysis.Rmd
> - http://dynamicog.org/poliConsp/AE_analysis.html

The response provides rationale and interpretation for the statistical analysis in the manuscript using R and R Markdown. Commented throughout.  




