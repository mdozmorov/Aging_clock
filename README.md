# Data and papers related to various clocks predicting age

Note the original [Aging](https://github.com/mdozmorov/Aging) repository containing much more [epigenetic clock-related data](https://github.com/mdozmorov/Aging/tree/master/data). This repository is a more systematic attempt to collect aging clock data and should eventually supersede the [Aging](https://github.com/mdozmorov/Aging) repository.

The [tools](tools) folder contain code for epigenetic clock calculations.
- [epigenetic_ageing_clock](tools/epigenetic_ageing_clock) - epigenetic and mitotic clocks using Illumina 450K IDAT files (including preprocessing), [GitHub](https://github.com/demh/epigenetic_ageing_clock)
- [epigeneticclock](tools/epigeneticclock) - Shiny app for classical Horvath clock calculation, [GitHub](https://github.com/aldringsvitenskap/epigeneticclock)
- [horvath_clock](tools/horvath_clock) - R tutorial for DNA methylation age and the epigenetic clock, from Horvath's website (no longer available)

* [Databases](#databases)
* [Papers, tools, data](#papers-tools-data)
  * [Mouse](#mouse)
* [Reviews](#reviews)
* [Misc](#misc)

## Databases

- [Open Genes](https://open-genes.com/) - age-related 2,402 genes, with comprehensive description, manually curated from over 1,700 publications. Human, mouse, model organisms, homolog genes. Classified into 6 types of studies, 12 criteria, ranked by evidence. API access, [download](https://open-genes.com/download). <details>
    <summary>Paper</summary>
    Rafikova, Ekaterina, Nikolay Nemirovich-Danchenko, Anna Ogmen, Anna Parfenenkova, Anastasiia Velikanova, Stanislav Tikhonov, Leonid Peshkin, et al. “Open Genes—a New Comprehensive Database of Human Genes Associated with Aging and Longevity.” Nucleic Acids Research 52 (2024).
</details>

- [Aging Atlas](https://bigd.big.ac.cn/aging/index) - RNA-seq, scRNA-seq, ChIP-seq, proteomics, pharmacogenomics age-related data, human, mouse. Download.
    - “[Aging Atlas: A Multi-Omics Database for Aging Biology](https://doi.org/10.1093/nar/gkaa894).” Nucleic Acids Research, (January 8, 2021)

- [AGEMAP](http://cmgm.stanford.edu/~kimlab/aging_mouse/) - a gene expression database for aging in mice

- [ClockBase](https://www.clockbase.org/) - biological age predictor for human and mouse. Combines multiple predictor (Horvath, Hannum, PhenoAge, DunedinPOAm, DunedinPACE, 11 aging clock models total). Reprocessing of GEO datasets, over 300,000 samples (downloadable). An interactive analysis tool to allow users to perform statistical analyses and visualization of biological age. R package. <details>
    <summary>Paper</summary>
    Ying, Kejun, Alexander Tyshkovskiy, Alexandre Trapp, Hanna Liu, Mahdi Moqri, Csaba Kerepesi, and Vadim N. Gladyshev. “ClockBase: A Comprehensive Platform for Biological Age Profiling in Human and Mouse.” Preprint. Bioinformatics, March 1, 2023. https://doi.org/10.1101/2023.02.28.530532.
</details>

- [DAA, Digital Ageing Atlas](http://ageing-map.org/) - human/mouse phenotypes and factors associateed with aging, from genes and molecular changes to physiological/psychological changes

- [Human Ageing Genomic Resources](https://genomics.senescence.info/download.html) - downloadable age-related gene lists and resources from GenAge, LongevityMap, GenDR, DrugAge, AnAge, ARCT, Etcetera

- [JenAge ageing-related resources](http://info-centre.jenage.de/ageing/databases.html) - various resources, including cross-species


## Papers, tools, data

- Chen, Q., Dwaraka, V.B., Carreras-Gallo, N. et al. OMICmAge quantifies biological age by integrating multi-omics with electronic medical records. Nat Aging (2026). https://doi.org/10.1038/s43587-026-01073-7 - age prediction from electronic health records, methylation. [OMICmAge](https://github.com/LaskySuLab/OMICmAge/) - metabolomic, proteomic, clinical variables.

- Age-related genes from multi-omics of human blood. Muliple methylation (Illumina EPIC, sequencing), RNA-seq datasets (Table 1). RNA-seq is a poor predictor of aging, methylation is much better. CpGs and genes associated with aging not affected by cell composition changes. Age-associated CpGs predict survival. [GitHub](https://github.com/moqri/blood-aging-genes). [Supplementary Data 1](https://www.nature.com/articles/s41467-025-67369-1#Sec21) - 721 CpGs and the associated 106 genes, correlated with age by methylation and gene expression. <details>
    <summary>Paper</summary>
    Moqri, Mahdi, Jesse Poganik, Chiara Herzog, et al. “Integrative Epigenetics and Transcriptomics Identify Aging Genes in Human Blood.” Preprint, Systems Biology, June 3, 2024. https://doi.org/10.1101/2024.05.30.596713.
</details>

- Epigenetic aging clocks, computational and statistical considerations. Most DNA methylation changes are small, 2-5% over decades. Different forms of cellular age (all-cause mortality, telomere length, stem cell division, obesity, HIV, Down syndrome, neurodegeneration, diabetes, menopause, pregnancy). Different biological processes (DNA repair, damage, cell division, composition, somatic mutations, circadian rhythm, metabolic stress). The Zhang clock (whole blood, trained on over 13,000 samples) appears most precise (1-3 years error). Absolute Age Acceleration (AAA) and Relative Age Acceleration (RAA, residuals). Most clocks use elastic net. Assumption that changes (within 20-70 span) are linear. Using principal components helps improving stability. Bayesian, deep learning approaches (fully connected, convolutional, graph networks, coupled with explainable AI tools, SHAP, PGExplainer) have been developed. CTCF-binding sites among the top-ranked CpGs. Noise barometer clocks - stable CpGs in normally aging populations detected as outliers in age-accelerated samples. Most clocks are trained on whole blood data, need cell type-specific. Deconvolution (EpiDISH, a posteriori adjustment using DNAm reference matrix, differentially methylated cytosines as clocks. References to tissue- and cell type-specific clocks. Computational analysis of mechanisms (spectral clustering of union of all age-associated CpGs), experimental analysis (DNAm influenced by differentiation), attempts to understand causality. [Table 1](https://www.nature.com/articles/s41576-024-00807-w/tables/1) - DNA methylation clocks for humans. Chronological age, biological age, mitotic clocks, telomere length clock, causality clock. Includes [DNA Methylation Age Calculator](https://dnamage.clockfoundation.org/) - Horvath, SkinBlood, GrimAge; [methylclock](https://bioconductor.org/packages/methylclock/) - R package implementing Hannum, Zhang, PhenoAge, DNAmTL; [PC-Clocks](https://github.com/MorganLevineLab/PC-Clocks/) - principal components-based clocks; [AltumAge](https://github.com/rsinghlab/AltumAge) - deep learning-based pan-tissue clock; [IntrinClock](https://zenodo.org/records/10426597) - stable clock predicting similar epigenetic age in various immune cell types; [MEAT](https://bioconductor.org/packages/MEAT/) - R package for Muscle Epigenetic Age Test; [CorticalClock](https://github.com/gemmashireby/CorticalClock) - predict cortical DNAm age in R; [EpiMitClocks](https://github.com/aet21/EpiMitClocks) - Epigenetic Mitotic Clocks; others. Skin&Blood clock at [dnamage.clockfoundation.org](https://dnamage.clockfoundation.org/) appears as one of the most accurate. <details>
    <summary>Paper</summary>
    Teschendorff, Andrew E. “Epigenetic Ageing Clocks: Statistical Methods and Emerging Computational Challenges.” Nature Reviews Genetics 26 (2025). https://doi.org/10.1038/s41576-024-00807-w
</details>

- [GP-age](https://github.com/mirivar/GP-age) Methylation age meta analysis, 11,910 samples from [meth_atlas](https://github.com/nloyfer/meth_atlas). 80 CpGs most Spearman correlated with age, k-means clustered into 30 clusters and 30 CpGs selected. Gaussian Process Regression model. Median absolute error 2.1 years, outperforms Horvath, Hannum. [Supplementary](https://www.sciencedirect.com/science/article/pii/S2667237523002114#appsec2) Table S2. List of 1,034 age-correlative CpG sites. Table S3. List of 71 CpG sites with a Spearman correlation and methylation range over the defined ratios. <details>
    <summary>Paper</summary>
    Varshavsky, Miri, Gil Harari, Benjamin Glaser, Yuval Dor, Ruth Shemer, and Tommy Kaplan. “Accurate Age Prediction from Blood Using a Small Set of DNA Methylation Sites and a Cohort-Based Machine Learning Algorithm.” Cell Reports Methods 3, no. 9 (2023): 100567. https://doi.org/10.1016/j.crmeth.2023.100567.
</details>

- Comparison of 11 epigenetic clocks (Bocklandt, Garagnani, Horwath1, Hannum, Weidner, Lin, Vidal-Bralo, Yang, Zhang, Levine, Horvath2), human. CpG sites are largely non-overlapping, differ in regards to the consistency of their age correlation across tissues/cells, gene expression. The original Horvath clock performs best overall and across tissues. Network analysis (WGCNA) identified senescence, mitochondrial and metabolic (OXPHOS) pathways. Tumors show accelerated epigenetic clocks. <details>
    <summary>Paper</summary>
    Liu, Zuyun, Diana Leung, Kyra Thrush, Wei Zhao, Scott Ratliff, Toshiko Tanaka, Lauren L. Schmitz, Jennifer A. Smith, Luigi Ferrucci, and Morgan E. Levine. “Underlying Features of Epigenetic Aging Clocks in Vivo and in Vitro.” Aging Cell 19, no. 10 (October 2020): e13229. https://doi.org/10.1111/acel.13229.
</details>

- [MammalMethylClock](https://github.com/jazoller96/mammalian-methyl-clocks) - R package for the construction and assessment of methylation-based epigenetic clocks in mammals. A collection of more than 11K samples spanning 59 tissue types from 185 mammalian species from 19 taxonomic orders. SeSaMe notmalization for technical bias removal, filtering, annotation, age, sex, species predictors). Tools and annotations of data generated by the [Mammalian Methylation Consortium](https://github.com/shorvath/MammalianMethylationConsortium). <details>
    <summary>Paper</summary>
    Zoller, Joseph A., and Steve Horvath. “MammalMethylClock R Package: Software for DNA Methylation-Based Epigenetic Clocks in Mammals.” Preprint. Bioinformatics, September 7, 2023. https://doi.org/10.1101/2023.09.06.556506.
</details>

- [AltumAge](https://github.com/rsinghlab/AltumAge) - a generalizable age predictor (multi-layer perceptron) from methylation data. Compared with Horvath, Hannum clocks, DeepMAge. Accounting for interactions. Feature importance using SHAP, DeepPINK. Important CpGs are enriched near CTCF sites. Jupyter notebook and methylation data are available. <details>
    <summary>Preprint</summary>
    Lima Camillo, Lucas Paulo de, Louis R Lapierre, and Ritambhara Singh. “[AltumAge: A Pan-Tissue DNA-Methylation Epigenetic Clock Based on Deep Learning](https://doi.org/10.1101/2021.06.01.446559).” Preprint. Bioinformatics, June 1, 2021. 
</details>

- Characterizing age-specific genomic, transcriptomic and epigenetic alterations in human cancers (TCGA). Older patients have more genomic instability, somatic CNAs, mutations. Global age-related transcriptomics changes associated with DNA methylation changes. Simple and multiple linear regression adjusting for gender, race, cancer type, on Genomic Instability (GI) scores, loss of heterozygosity (LOH), whole genome duplication (WGD), sCNA. Characterization of individual cancer, data type. [Supplementary tables](https://www.nature.com/articles/s41467-021-22560-y#Sec23) - associations between age and GI, LOH, WGD, SCNA (arm- and focal level), mutations, genes, pathways, methylation, more. [GitHub](https://github.com/maglab/Age-associated_cancer_genome). <details>
    <summary>Paper</summary>
    Chatsirisupachai, Kasit, Tom Lesluyes, Luminita Paraoan, Peter Van Loo, and João Pedro de Magalhães. “An Integrative Analysis of the Age-Associated Multi-Omic Landscape across Cancers.” Nature Communications 12, no. 1 (December 2021): 2345. https://doi.org/10.1038/s41467-021-22560-y.
</details>

- Porter, Hunter L, Chase A Brown, Xiavan Roopnarinesingh, Cory B Giles, Constantin Georgescu, Willard M Freeman, and Jonathan D Wren. “[Many Chronological Aging Clocks Can Be Found throughout the Epigenome: Implications for Quantifying Biological Aging](https://doi.org/10.1111/acel.13492),” Aging Cell. 2021 Oct 16 - The largest to date epigenetic clock analysis of [Illumina 450K arrays](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GPL13534). ~20% of methylation loci can be used to make many different epigenetic clocks whose age prediction performance surpasses that of telomere length. The average methylation change was small (~1.5%), sites were under-represented in canonical regions of epigenetic regulation but enriched in intergenic regions and eQTLs. Tissues show largely similar aging patterns. Association between accelerated epigenetic aging and disease is weak. Introduction to epigenetic clocks (senescence, obesity, cancer). Discussion why age-related variation in methylation at clock loci is small. Elastic net regression, linear regression with interactions (tissue-age interactions are small), non-linear fit is better. Models trained on separate age groups poorly predict across age groups.

- Universal DNA methylation clock. 128 mammalian species, 59 tissue types, 37K highly conserved stretches of DNA, 10k methylation arrays (HorvathMammalMethylChip40).665 age-related CpGs. Three clocks: 1) directly correlating methylation with chronological age, 2) correlation with respect to the maximum lifespan of its species, 3) with respect to average age at sexual maturity. Cross-validation across species. Elastic net for predictor selection. Age and developmental processes are interlinked. <details>
    <summary>Preprint</summary>
    - MAMMALIAN METHYLATION CONSORTIUM, Ake T. Lu, Zhe Fei, Amin Haghani, Todd R. Robeck, Joseph A. Zoller, Caesar Z. Li, et al. “[Universal DNA Methylation Age across Mammalian Tissues](https://doi.org/10.1101/2021.01.18.426733).” Preprint. Developmental Biology, January 19, 2021. 
</details>

- [RNAAgeCalc](http://www.ams.sunysb.edu/~pfkuan/softwares.html#RNAAgeCalc) - [R/Bioconductor](https://bioconductor.org/packages/release/bioc/html/RNAAgeCalc.html) package, [Python](https://pypi.org/project/racpy/) package and [Shiny app](https://xuren2120.shinyapps.io/RNAAgeCalcshiny/) for cross-tissue and tissue-specific age predictors from RNA-seq. Racial and tissue differences, mutation burden, mortality risk and cancer stage (application to TCGA data) are associated with transcriptional age. Data from GTeX, tissue-specific and meta analysis, elastic net outperforms  GBM, RF, SVR, LDA. [Supplementary tables](https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0237006#sec021) - age-associated gene lists. <details>
    <summary>Paper</summary>
    Ren, Xu, and Pei Fen Kuan. “RNAAgeCalc: A Multi-Tissue Transcriptional Age Calculator.” Edited by Yun Li. PLOS ONE 15, no. 8 (August 4, 2020): e0237006. https://doi.org/10.1371/journal.pone.0237006.
</details>

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

- [scEpiAge](https://github.com/EpigenomeClock/scEpiAge) - single-cell methylation-based epigenetic clock, mouse blood cells. Single-cell GNAme data (scM&T technology) from peripheral blood of mice 10-101 weeks. Elastic net regression better handles binary, sparse data. Cell type effect stronger than age effect. CD4+ ad CD8+ T cells younger compared to B-cells. Outperforms scAge. New ([GSE225173](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE225173) methylation coverage signal) and public datasets. [Code](https://github.com/EpigenomeClock/scAgingPaper) to reproduce analyses. <details>
    <summary>Paper</summary>
    Bonder, Marc Jan, Stephen J. Clark, Felix Krueger, Siyuan Luo, João Agostinho De Sousa, Aida M. Hashtroud, Thomas M. Stubbs, et al. “scEpiAge: An Age Predictor Highlighting Single-Cell Ageing Heterogeneity in Mouse Blood.” Nature Communications 15, no. 1 (August 31, 2024): 7567. https://doi.org/10.1038/s41467-024-51833-5.
</details>

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


## Misc

- [DNA methylation age and the epigenetic clock](https://horvath.genetics.ucla.edu/html/dnamage/) - Estimate DNA methylation age with R by Steve Horvath. [R scripts](tools/horvath_clock)

- http://www.aging.ai/ - Predict biological age from blood biomarkers

- https://www.how-old.net - Detect age by photo