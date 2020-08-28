# Data and papers related to various clocks predicting age

Note the original [Aging](https://github.com/mdozmorov/Aging) repository containing much more [epigenetic clock-related data](https://github.com/mdozmorov/Aging/tree/master/data). This repository is a more systematic attempt to collect aging clock data and should eventually supersede the [Aging](https://github.com/mdozmorov/Aging) repository.

* [Databases](#databases)
* [Papers and data](#papers-and-data)
  * [Mouse](#mouse)
* [Reviews](#reviews)
* [Tools](#tools)

## Databases

- [Human Ageing Genomic Resources](https://genomics.senescence.info/download.html) - downloadable age-related gene lists and resources from GenAge, LongevityMap, GenDR, DrugAge, AnAge, ARCT, Etcetera

## Papers and data

- Liu, Zuyun, Pei-Lun Kuo, Steve Horvath, Eileen Crimmins, Luigi Ferrucci, and Morgan Levine. “[A New Aging Measure Captures Morbidity and Mortality Risk across Diverse Subpopulations from NHANES IV: A Cohort Study](https://doi.org/10.1371/journal.pmed.1002718).” Edited by Sanjay Basu. PLOS Medicine 15, no. 12 (December 31, 2018) - Phenotypic age from the analysis of NHANES IV data, >11K individuals 20-84 years old. Formula - Phenotypic Age is calculated using chronological age and 9 biomarkers (albumin, creatinine, glucose, [log] C-reactive protein [CRP], lymphocyte percent, mean cell volume, red blood cell distribution width, alkaline phosphatase, and white blood cell count) that were selected using a Cox proportional hazard elastic net model for mortality based on 10-fold cross-validation. 

- Galkin, Fedor, Alexander Aliper, Evgeny Putin, Igor Kuznetsov, Vadim N Gladyshev, and Alex Zhavoronkov. “[Human Microbiome Aging Clocks Based on Deep Learning and Tandem of Permutation Feature Importance and Accumulated Local Effects.](https://doi.org/10.1101/507780)” BioRxiv, January 1, 2018, 507780 - Mitotic epigenetic clock (epiTOC) for predicting cancer risk. Polycomb genes, methylation increase correlates with the estimated rate of stem cell division.

- Levine, Morgan E., Ake T. Lu, Austin Quach, Brian H. Chen, Themistocles L. Assimes, Stefania Bandinelli, Lifang Hou, et al. “[An Epigenetic Biomarker of Aging for Lifespan and Healthspan.](https://doi.org/10.18632/aging.101414)” Aging 10, no. 4 (18 2018) - DNA PhenoAge clock predicting multi-tissue, multi-disease age-associated mortality risk. Outperforms the original Horvath and Hannum clocks. [Data: Levine_2018](data/Levine_2018/)

- Wang, Zichen, Li Li, Benjamin S. Glicksberg, Ariel Israel, Joel T. Dudley, and Avi Ma’ayan. “[Predicting Age by Mining Electronic Medical Records with Deep Learning Characterizes Differences between Chronological and Physiological Age.](https://doi.org/10.1016/j.jbi.2017.11.003)” Journal of Biomedical Informatics 76 (December 2017) - Age prediction from EMRs using 3-layers fully-connected NN, 40% dropout, 10-fold cross-validation. Implemented in Keras on Theano, no software, only observational.

- Putin, Evgeny, Polina Mamoshina, Alexander Aliper, Mikhail Korzinkin, Alexey Moskalev, Alexey Kolosov, Alexander Ostrovskiy, Charles Cantor, Jan Vijg, and Alex Zhavoronkov. “[Deep Biomarkers of Human Aging: Application of Deep Neural Networks to Biomarker Development.](https://doi.org/10.18632/aging.100968)” Aging 8, no. 5 (2016) - Predicting age from blood biomarkers using deep neural networks. 21 DNNs tested, outperform simpler machine learning algorithms. Feature selection. Online version: http://www.aging.ai/

- Yang, Zhen, Andrew Wong, Diana Kuh, Dirk S. Paul, Vardhman K. Rakyan, R. David Leslie, Shijie C. Zheng, Martin Widschwendter, Stephan Beck, and Andrew E. Teschendorff. “[Correlation of an Epigenetic Mitotic Clock with Cancer Risk.](https://doi.org/10.1186/s13059-016-1064-3)” Genome Biology 17, no. 1 (03 2016) - Mitotic epigenetic clock (epiTOC) for predicting cancer risk. Polycomb genes, methylation increase correlates with the estimated rate of stem cell division. [Data: Yang_2016](data/Yang_2016/)

- Krištić, Jasminka, Frano Vučković, Cristina Menni, Lucija Klarić, Toma Keser, Ivona Beceheli, Maja Pučić-Baković, et al. “[Glycans Are a Novel Biomarker of Chronological and Biological Ages.](https://doi.org/10.1093/gerona/glt190)” The Journals of Gerontology. Series A, Biological Sciences and Medical Sciences 69, no. 7 (July 2014) - IgG glycosylation linked to biological and chronological age. Formulas, dependency differ for males and females.

- Weidner, Carola Ingrid, Qiong Lin, Carmen Maike Koch, Lewin Eisele, Fabian Beier, Patrick Ziegler, Dirk Olaf Bauerschlag, et al. “[Aging of Blood Can Be Tracked by DNA Methylation Changes at Just Three CpG Sites.](https://doi.org/10.1186/gb-2014-15-2-r24)” Genome Biology 15, no. 2 (2014) - 3-CpG-age predictive model, selected from 102 CpGs. Pearson correlation, then LM, formula. Hypermethylated are enriched in CGIs, bivalent histone modifications. Non-tissue specific (refs to tissue specific). Sex influences age. Epigenomic enrichment using Fisher's exact. Intro about CpG-age epigenomic enrichments. Prediction studies.

- Bocklandt, Sven, Wen Lin, Mary E. Sehl, Francisco J. Sánchez, Janet S. Sinsheimer, Steve Horvath, and Eric Vilain. “[Epigenetic Predictor of Age.](https://doi.org/10.1371/journal.pone.0014821)” PloS One 6, no. 6 (2011) - Methylation age predictor. Illumina 27K,  88 sites in or near 80 genes. 34 male twins, GSE28746. Three sites, EDARADD, TOM1L1, NPTX2 explain >73% of age. ComBat-corrected data for prediction. [Table S1.](https://journals.plos.org/plosone/article/file?type=supplementary&id=info:doi/10.1371/journal.pone.0014821.s002) - 88 loci significantly correlated with age TargetID represents the exact Illumina probe on the array, Chr: chromosome number, Gene_ID: NCBI Gene database locator, Symbol: gene name, r: correlation coefficient, p-value: significance of correlation, q-value: significance corrected for multiple comparisons.

### Mouse

- Shavlakadze, Tea, Melody Morris, Jian Fang, Sharon X Wang, Weihua Zhou, Herman W Tse, Ricardo Mondragon-Gonzalez, Guglielmo Roma, and David J Glass. “[Age-Related Gene Expression Signatures (AGES) in Rats Demonstrate Early, Late, and Linear Transcriptional Changes from Multiple Tissues.](https://doi.org/10.1101/717835)” Preprint. Systems Biology, July 28, 2019 - AGES - multi-timepoint (6-27-month) age-related gene expression signature from liver, kidney, muscle, hippocampus of rats. [Supplementary Table S1 with data](https://www.cell.com/cell-reports/fulltext/S2211-1247(19)31091-5#secsectitle0155)

- BI Ageing Clock Team, Thomas M. Stubbs, Marc Jan Bonder, Anne-Katrien Stark, Felix Krueger, Ferdinand von Meyenn, Oliver Stegle, and Wolf Reik. “[Multi-Tissue DNA Methylation Age Predictor in Mouse.](https://doi.org/10.1186/s13059-017-1203-5)” Genome Biology 18, no. 1 (December 2017) - Mouse epigenetic age clock, 329 CpGs. Elastic net regression. [GitHub repo](https://github.com/EpigenomeClock/MouseEpigeneticClock)

- Petkovich, Daniel A., Dmitriy I. Podolskiy, Alexei V. Lobanov, Sang-Goo Lee, Richard A. Miller, and Vadim N. Gladyshev. “[Using DNA Methylation Profiling to Evaluate Biological Age and Longevity Interventions.](https://doi.org/10.1016/j.cmet.2017.03.016)” Cell Metabolism 25, no. 4 (April 4, 2017) - Mouse epigenetic clock predicting biological age. 90 CpGs, blood. Distinct from human epigenetic clock. Reduced Representation Bisulfite Sequencing. mm10 genomic coordinates are available in [Table S3](https://www.cell.com/cms/10.1016/j.cmet.2017.03.016/attachment/08ea219a-4d0a-430b-9062-0bc103e20c20/mmc4.xlsx), [Petkovich_2017_mouse.xlsx](data/Petkovich_2017_mouse.xlsx)

- Wang, Tina, Brian Tsui, Jason F. Kreisberg, Neil A. Robertson, Andrew M. Gross, Michael Ku Yu, Hannah Carter, Holly M. Brown-Borg, Peter D. Adams, and Trey Ideker. “[Epigenetic Aging Signatures in Mice Livers Are Slowed by Dwarfism, Calorie Restriction and Rapamycin Treatment.](https://doi.org/10.1186/s13059-017-1186-2)” Genome Biology 18, no. 1 (28 2017) - [Source: Additional file 3](https://static-content.springer.com/esm/art%3A10.1186%2Fs13059-017-1186-2/MediaObjects/13059_2017_1186_MOESM3_ESM.xlsx)

- Zahn, Jacob M, Suresh Poosala, Art B Owen, Donald K Ingram, Ana Lustig, Arnell Carter, Ashani T Weeraratna, et al. “[AGEMAP: A Gene Expression Database for Aging in Mice](https://journals.plos.org/plosgenetics/article?id=10.1371/journal.pgen.0030201)” PLoS Genetics 3, no. 11 (2007): 12. - AGEMAP - atlas of gene expression in mouse aging project, \~9K genes, 16 tissues, over time. Neural, vascular, steroid processes affected in mice. Correlation across organisms is poor, only electron transport chain is commonly affected. Data is in the [supplementary tables](https://journals.plos.org/plosgenetics/article?id=10.1371/journal.pgen.0030201#s5) and at http://cmgm.stanford.edu/~kimlab/aging_mouse/

## Reviews

- Nwanaji-Enwerem, Jamaji C., Marc G. Weisskopf, and Andrea A. Baccarelli. “[Multi-Tissue DNA Methylation Age: Molecular Relationships and Perspectives for Advancing Biomarker Utility.](https://doi.org/10.1016/j.arr.2018.04.005)” Ageing Research Reviews 45 (August 2018) -  Human DNA methylation aging clock, its association with cancer, immune system, metabolism, cell- and nucleic acid processes. Key references to major studies. DNAm clock is different from telomere shortening, BMI, lower than expected in some cancers.

- Horvath, Steve, and Kenneth Raj. “[DNA Methylation-Based Biomarkers and the Epigenetic Clock Theory of Ageing.](https://doi.org/10.1038/s41576-018-0004-3)” Nature Reviews Genetics, April 11, 2018 - Epigenetic clock review. Horvath clock, Hannum, PhenoAge, other developments. Age-related conditions linked to epigenetic age. Epigenetic age is 40% heritable.

- Field, Adam E., Neil A. Robertson, Tina Wang, Aaron Havas, Trey Ideker, and Peter D. Adams. “[DNA Methylation Clocks in Aging: Categories, Causes, and Consequences.](https://doi.org/10.1016/j.molcel.2018.08.008)” Molecular Cell 71, no. 6 (September 2018) - Review of DNA methylation age clocks. The dynamic nature of DNA methylation. References to methylation clock studies in humans, mice, other organisms. Clocks derived from multiple tissue data. Poor overlap among studies. Latest specialized clocks like EpiTOC, PhenoAge,  Box 1 - penalized regression framework for epigenetic clock.

- Wagner, Wolfgang. “[Epigenetic Aging Clocks in Mice and Men.](https://doi.org/10.1186/s13059-017-1245-8)” Genome Biology 18, no. 1 (14 2017) - - Short review about methylation (epigenetic) age clock in human and mice. Direct overlap is low, morphogenesis and development are general themes of functional enrichment. [Table 1](https://genomebiology.biomedcentral.com/articles/10.1186/s13059-017-1245-8#Tab1) listing epigenetic clock studies and their features.


## Tools

- [DNA methylation age and the epigenetic clock](https://horvath.genetics.ucla.edu/html/dnamage/) - Estimate DNA methylation age with R by Steve Horvath. [R scripts](tools/horvath_clock)

- http://www.aging.ai/ - Predict biological age from blood biomarkers

- https://www.how-old.net - Detect age by photo