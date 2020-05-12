# R tutorial for DNA methylation age and the epigenetic clock

Adapted for 450K array data by using the common 350 age-predictive CpG probes instead of 353

[Source](https://horvath.genetics.ucla.edu/html/dnamage/), R scripts and data are modified from the "R Tutorials" section

[Analysis.R](Analysis.R) - R code from [TUTORIAL1.docx](TUTORIAL1.docx) that predicts age using data from a probes X samples CSV file, where the first column is ProbeID. Example: 27K data [MethylationDataExample55.csv](MethylationDataExample55.csv). Output: Output.csv with the columns:

- `SampleID` - sample identifier
- `DNAmAge` - DNA methylation age` - predicted age
- `Comment` - a comment if a sample looks suspicious
- `noMissingPerSample` - number of missing beta values per sample
- `meanMethBySample, minMethBySample` - the mean and min beta value before normalization
- `predictedGender` - predicted gender based on the mean across the X chromosomal markers
- `meanXchromosome` -  mean beta value across the X chromosomal markers
