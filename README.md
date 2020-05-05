# Data and papers related to various clocks predicting age

Note the original [Aging](https://github.com/mdozmorov/Aging) repository containing much more [epigenetic clock-related data](https://github.com/mdozmorov/Aging/tree/master/data). This repository is a more systematic attempt to collect aging clock data and should eventually supersede the [Aging](https://github.com/mdozmorov/Aging) repository.

* [Papers and data](#papers-and-data)
  * [Mouse](#mouse)
* [Reviews](#reviews)
* [Tools](#tools)

## Papers and data

- Galkin, Fedor, Alexander Aliper, Evgeny Putin, Igor Kuznetsov, Vadim N Gladyshev, and Alex Zhavoronkov. “[Human Microbiome Aging Clocks Based on Deep Learning and Tandem of Permutation Feature Importance and Accumulated Local Effects.](https://doi.org/10.1101/507780)” BioRxiv, January 1, 2018, 507780 - Mitotic epigenetic clock (epiTOC) for predicting cancer risk. Polycomb genes, methylation increase correlates with the estimated rate of stem cell division.

- Levine, Morgan E., Ake T. Lu, Austin Quach, Brian H. Chen, Themistocles L. Assimes, Stefania Bandinelli, Lifang Hou, et al. “[An Epigenetic Biomarker of Aging for Lifespan and Healthspan.](https://doi.org/10.18632/aging.101414)” Aging 10, no. 4 (18 2018) - DNA PhenoAge clock predicting multi-tissue, multi-disease age-associated mortality risk. Outperforms the original Horvath and Hannum clocks. [Data: Levine_2018](data/Levine_2018/)

- Wang, Zichen, Li Li, Benjamin S. Glicksberg, Ariel Israel, Joel T. Dudley, and Avi Ma’ayan. “[Predicting Age by Mining Electronic Medical Records with Deep Learning Characterizes Differences between Chronological and Physiological Age.](https://doi.org/10.1016/j.jbi.2017.11.003)” Journal of Biomedical Informatics 76 (December 2017) - Age prediction from EMRs using 3-layers fully-connected NN, 40% dropout, 10-fold cross-validation. Implemented in Keras on Theano, no software, only observational.

- Putin, Evgeny, Polina Mamoshina, Alexander Aliper, Mikhail Korzinkin, Alexey Moskalev, Alexey Kolosov, Alexander Ostrovskiy, Charles Cantor, Jan Vijg, and Alex Zhavoronkov. “[Deep Biomarkers of Human Aging: Application of Deep Neural Networks to Biomarker Development.](https://doi.org/10.18632/aging.100968)” Aging 8, no. 5 (2016) - Predicting age from blood biomarkers using deep neural networks. 21 DNNs tested, outperform simpler machine learning algorithms. Feature selection. Online version: http://www.aging.ai/

- Yang, Zhen, Andrew Wong, Diana Kuh, Dirk S. Paul, Vardhman K. Rakyan, R. David Leslie, Shijie C. Zheng, Martin Widschwendter, Stephan Beck, and Andrew E. Teschendorff. “[Correlation of an Epigenetic Mitotic Clock with Cancer Risk.](https://doi.org/10.1186/s13059-016-1064-3)” Genome Biology 17, no. 1 (03 2016) - Mitotic epigenetic clock (epiTOC) for predicting cancer risk. Polycomb genes, methylation increase correlates with the estimated rate of stem cell division. [Data: Yang_2016](data/Yang_2016/)

- Krištić, Jasminka, Frano Vučković, Cristina Menni, Lucija Klarić, Toma Keser, Ivona Beceheli, Maja Pučić-Baković, et al. “[Glycans Are a Novel Biomarker of Chronological and Biological Ages.](https://doi.org/10.1093/gerona/glt190)” The Journals of Gerontology. Series A, Biological Sciences and Medical Sciences 69, no. 7 (July 2014) - IgG glycosylation linked to biological and chronological age. Formulas, dependency differ for males and females.

### Mouse

- Shavlakadze, Tea, Melody Morris, Jian Fang, Sharon X Wang, Weihua Zhou, Herman W Tse, Ricardo Mondragon-Gonzalez, Guglielmo Roma, and David J Glass. “[Age-Related Gene Expression Signatures (AGES) in Rats Demonstrate Early, Late, and Linear Transcriptional Changes from Multiple Tissues.](https://doi.org/10.1101/717835)” Preprint. Systems Biology, July 28, 2019 - AGES - multi-timepoint (6-27-month) age-related gene expression signature from liver, kidney, muscle, hippocampus of rats. [Supplementary Table S1 with data](https://www.cell.com/cell-reports/fulltext/S2211-1247(19)31091-5#secsectitle0155)

- Petkovich, Daniel A., Dmitriy I. Podolskiy, Alexei V. Lobanov, Sang-Goo Lee, Richard A. Miller, and Vadim N. Gladyshev. “[Using DNA Methylation Profiling to Evaluate Biological Age and Longevity Interventions.](https://doi.org/10.1016/j.cmet.2017.03.016)” Cell Metabolism 25, no. 4 (April 4, 2017) - Mouse epigenetic clock predicting biological age. 90 CpGs, blood. Distinct from human epigenetic clock. Reduced Representation Bisulfite Sequencing. mm10 genomic coordinates are available in [Table S3](https://www.cell.com/cms/10.1016/j.cmet.2017.03.016/attachment/08ea219a-4d0a-430b-9062-0bc103e20c20/mmc4.xlsx), [Petkovich_2017_mouse.xlsx](data/Petkovich_2017_mouse.xlsx)

- Zahn, Jacob M, Suresh Poosala, Art B Owen, Donald K Ingram, Ana Lustig, Arnell Carter, Ashani T Weeraratna, et al. “[AGEMAP: A Gene Expression Database for Aging in Mice](https://journals.plos.org/plosgenetics/article?id=10.1371/journal.pgen.0030201)” PLoS Genetics 3, no. 11 (2007): 12. - AGEMAP - atlas of gene expression in mouse aging project, \~9K genes, 16 tissues, over time. Neural, vascular, steroid processes affected in mice. Correlation across organisms is poor, only electron transport chain is commonly affected. Data is in the [supplementary tables](https://journals.plos.org/plosgenetics/article?id=10.1371/journal.pgen.0030201#s5) and at http://cmgm.stanford.edu/~kimlab/aging_mouse/

## Reviews

- Nwanaji-Enwerem, Jamaji C., Marc G. Weisskopf, and Andrea A. Baccarelli. “[Multi-Tissue DNA Methylation Age: Molecular Relationships and Perspectives for Advancing Biomarker Utility.](https://doi.org/10.1016/j.arr.2018.04.005)” Ageing Research Reviews 45 (August 2018) -  Human DNA methylation aging clock, its association with cancer, immune system, metabolism, cell- and nucleic acid processes. Key references to major studies. DNAm clock is different from telomere shortening, BMI, lower than expected in some cancers.

- Wagner, Wolfgang. “[Epigenetic Aging Clocks in Mice and Men.](https://doi.org/10.1186/s13059-017-1245-8)” Genome Biology 18, no. 1 (14 2017) - - Short review about methylation (epigenetic) age clock in human and mice. Direct overlap is low, morphogenesis and development are general themes of functional enrichment. [Table 1](https://genomebiology.biomedcentral.com/articles/10.1186/s13059-017-1245-8#Tab1) listing epigenetic clock studies and their features.


## Tools

- https://aging.shinyapps.io/epigeneticclock/ - Calculate DNA methylation age using Horvath 2013 method. GitHub: https://github.com/aldringsvitenskap/epigeneticclock

- http://www.aging.ai/ - Predict biological age from blood biomarkers

- https://www.how-old.net - Detect age by photo