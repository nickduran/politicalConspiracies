The Hidden Appeal of Political Conspiracies (Journal of Experimental and Social Psychology)
===================

R Notebook tutorials of statistical procedures, including all R code, used to conduct analyses reported in Duran, Nicholson, and Dale (accepted, JESP). Also included are the complete datasets used to perform statistical tests and to derive descriptives. 



R Code For Analyses: 
===================

> **Relevant Files:**
> - analysis_avgdeviat.Rmd

1) File runs the analyses described in the Mixed Effects Models section of paper, using data from synchronyMovementRapp.csv and synchronySpeechRapp.csv described above







Motion: 
===================

Code (preparation)
-------------

> **Relevant Files:**
> - MotionAnalysisCoordinatesRegions.m, MotionAnalysisGenerateFlow.m, MotionAnalysisGetSynchrony.m

1) In MotionAnalysisCoordinatesRegions.m: Step 1 in generating motion energy flows: Takes in videos of interaction and allows user to interactively mark coordinates on the screen that separate out each participants' movements and regions of interest (head, mid, and lower body). Coordinates saved in data array structure to be used in MotionAnalysisGenerateFlow.m (below).

2) In MotionAnalysisGenerateFlow.m: Step 2 in generating motion energy flows: Takes in data structure from above and all videos of interaction. Based on coordinates, splits videos into appropriate regions for each participant to perform the frame subtraction method on pixelation differences (i.e., movement displacement). These movement displacement values, for each targeted region of interest, are saved as text files in folder "motionSeriesRegions" to be used in MotionAnalysisGetSynchrony.m below. 

3) In MotionAnalysisGetSynchrony.m: Step 3 in generating motion energy flows: Main code for generating windowed-lagged cross correlation over the two movement displacement time series for each dyad.

Data (deidentified)
-------------

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


Speech:
===================

Data (deidentified)
-------------

> **Relevant Files:**
> - synchronySpeechRapp.csv

1) File contains CRQA DVs for speech rate, as well as rapport scores. Explanation for each column and codes:
> - Column A: Real vs Virtual Pairs; 1 = Real, 2 = Virtual 
> - Column B: Dyad number
> - Colmnn C: Order of deceptive conversation; 2 = First, 3 = Second
> - Column D: Did conversation involve deception or not; 0 = No Deception, 1 = Deception
> - Column E: Did conversation involve conflict or not; 1 = Disagreement, 2 = Agreement
> - Column F: Sex
> - Column G: Age
> - Column H: Topic of conversation (varies across 10 possible topics)
> - Column I: Average response between participants to question "I felt very close to my partner"
> - Column J: Average response between participants to question "I felt that my partner understood what I was saying"
> - Column K: Average response between participants to question "I felt that I understood what my partner was saying"
> - Column L: Same as I, but absolute difference between participants
> - Column M: Same as J, but absolute difference between participants
> - Column N: Same as K, but absolute difference between participants
> - Column O: Speech Rate RR
> - Column O: Speech Rate DET
> - Column O: Speech Rate L
> - Column O: Speech Rate LMAX
> - Column O: Speech Rate ENTR
> - Column O: Speech Rate T2















# Data and Code for Performing Statistics 

### Response to AE on statistical model preparation and interpretation

The response provides rationale for the statistical analysis in the manuscript using R and R Markdown. Commented throughout. 
* http://dynamicog.org/poliConsp/AE_analysis.html

### Statistial analysis with results as reported in the manuscript 

The sequence of steps taken in R to generate the results reported in the manuscript for each of the three dependent variables (latency, average deviation, and confidence scores). 

* http://dynamicog.org/poliConsp/analysis_latency.html
* http://dynamicog.org/poliConsp/analysis_deviation.html
* http://dynamicog.org/poliConsp/analysis_confidence.html

All R Notebooks used to generate R Markdown html (above) are also included in the repository.

### Additional files

* Mouse-Traj-2GIT.csv

    + Complete dataset

* summary_stats.R

    + Helper functions for reporting analyses

* responseTrends.Rmd

    + R Code used to generate summary statistics and all descriptives




