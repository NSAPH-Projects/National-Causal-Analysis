# Health Effects Institute Final Report

<img src="https://img.shields.io/badge/Study%20Status-Results%20Available-yellow.svg" alt="Study Status: Results Available"> 

This is the folder for publicly available code to reproduce Figure 7: Estimated causal exposure-response curve relating multiple air pollutants (PM2.5, NO2, and O3) to all-cause mortality among Medicare enrollees (2000�C2016) in the Health Effects Institute Final Report "Assessing Adverse Health Effects of Long-Term Exposure to Low Levels of Ambient Pollution: Implementation of Causal Inference Methods." This paper provides a useful statistical causal inference framework to evaluate potential causal relationships under a set of explicit causal inference assumptions in environmental epidemiological studies.

<b>Code: </b><br>
[`data_process.R`](https://github.com/NSAPH/National-Causal-Analysis/blob/master/StatisticalAnalysis-ERC/data_process.R) includes the code to extract all necessary individual data and prepare aggregated data for statistical analyses.

[`application_main.R`](https://github.com/NSAPH/National-Causal-Analysis/blob/master/StatisticalAnalysis-ERC/application_main.R) includes the code to fit different generalized propensity score models for various air pollution exposures on aggregated data, and prepare pre-match data for later matching step.

[`Matching`](https://github.com/NSAPH/National-Causal-Analysis/blob/master/StatisticalAnalysis-ERC/Matching) contains the code to implement matching steps on different pre-match set using batch jobs on RCE clusters. The outputs

[`application_plot.R`](https://github.com/NSAPH/National-Causal-Analysis/blob/master/StatisticalAnalysis-ERC/application_plot.R) includes the code to fit Kernel smoother on matched sets to estimate smoothed causal exposure-response curve relating multiple air pollutants (PM2.5, NO2, and O3) to all-cause mortality among Medicare enrollees (2000�C2016).

[`output_HEIplot.R`](https://github.com/NSAPH/National-Causal-Analysis/blob/master/StatisticalAnalysis-ERC/output_HEIplot.R) includes the code to generate Figure 7 of HEI final report.

[`Bootstrap`](https://github.com/NSAPH/National-Causal-Analysis/blob/master/StatisticalAnalysis-ERC/Bootstrap) contains the code to calculate the Bootstrapped confidence bounds for estimated smoothed causal exposure-response curves using batch jobs on RCE clusters.

<b>Data: </b><br>
Researchers can run the code in the order listed above. Medicare patient individual-level data are stored at a Level-3 secured data platform on Research Computing Environment, supported by the Institute for Quantitative Social Science in the Faculty of Arts and Sciences at Harvard University. Those interested in the original data can contact the corresponding author. 

All the analyses are run on  
R version 3.5.1 (2018-07-02) -- "Feather Spray"  
Copyright © 2018 The R Foundation for Statistical Computing

<b>Terms of Use:</b><br>
Authors/funders retain copyright (where applicable) of code on this Github repo and the article. Anyone who wishes to share, reuse, remix, or adapt this material must obtain permission from the corresponding author. By using the contents on this Github repo and the article, you agree to cite our paper.

<b>Acknowledgments</b><br>

We appreciate the work of M. Benjamin Sabath and Yaguang Wei for preparing and processing the data set used for anaylsis.