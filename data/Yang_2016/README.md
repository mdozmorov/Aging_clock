# Yang, Zhen, Andrew Wong, Diana Kuh, Dirk S. Paul, Vardhman K. Rakyan, R. David Leslie, Shijie C. Zheng, Martin Widschwendter, Stephan Beck, and Andrew E. Teschendorff. “Correlation of an Epigenetic Mitotic Clock with Cancer Risk.” Genome Biology 17, no. 1 (03 2016): 205. https://doi.org/10.1186/s13059-016-1064-3.

- [Table S1](https://static-content.springer.com/esm/art%3A10.1186%2Fs13059-016-1064-3/MediaObjects/13059_2016_1064_MOESM1_ESM.xls): The blood reference DNAm database. DNAm beta-values for 333 CpGs in 7 blood cell subtypes, as indicated. These CpGs discriminate at least one cell-type from all others (FDR < 0.05), using Illumina 450k data from Reinius et al and maps to a DHS in a blood cell subtype, with DHS data taken from the NIH Epigenomics Roadmap. For each of the 7 blood cell subtypes, the top 50 discriminatory CpGs with FDR < 0.05 were selected, ranked by difference in mean DNAm in order to select features with large differences in DNAm between the blood cell subtypes. This resulted in 333 unique CpGs. 

- [Table S2](https://static-content.springer.com/esm/art%3A10.1186%2Fs13059-016-1064-3/MediaObjects/13059_2016_1064_MOESM2_ESM.xls): The CpGs making up the pcgtAge model. Excel format table lists CpG id, t-statistic, P-value and FDR-value of all 385 age-hypermethylated PRC2 marked promoter CpGs (FDR<0.05), which are constitutively unmethylated in 52 fetal tissue samples from the Stem Cell Matrix Compendium-2 data, including cord blood data from GSE72867. Other columns give the average DNAm beta-value across all whole blood samples from Hannum et al, as well as the DNAm beta-value in all 52 fetal samples. All beta-values have been rounded to 2 significant digits, so beta-values <0.01 have been rounded to zero. [epiTOCcpgs.RData](https://static-content.springer.com/esm/art%3A10.1186%2Fs13059-016-1064-3/MediaObjects/13059_2016_1064_MOESM5_ESM.rdata). An R object data file containing the 450 k probe IDs of the 385 PCGT CpGs that make up epiTOC. 

- [EstEpiTOC.R](https://static-content.springer.com/esm/art%3A10.1186%2Fs13059-016-1064-3/MediaObjects/13059_2016_1064_MOESM6_ESM.r). An executable R script function to allow estimation of the pcgtAge score in independent samples. 