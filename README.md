# Data and papers related to various clocks predicting age

Note the original [Aging](https://github.com/mdozmorov/Aging) repository containing much more [epigenetic clock-related data](https://github.com/mdozmorov/Aging/tree/master/data). This repository is a more systematic attempt to collect aging clock data and should eventually supersede the [Aging](https://github.com/mdozmorov/Aging) repository.

* [Papers and data](#papers-and-data)
  * [Human](#human)
  * [Mouse](#mouse)
* [Reviews](#reviews)
* [Tools](#tools)

## Papers and data

- Galkin, Fedor, Alexander Aliper, Evgeny Putin, Igor Kuznetsov, Vadim N Gladyshev, and Alex Zhavoronkov. “Human Microbiome Aging Clocks Based on Deep Learning and Tandem of Permutation Feature Importance and Accumulated Local Effects.” BioRxiv, January 1, 2018, 507780. https://doi.org/10.1101/507780. - Mitotic epigenetic clock (epiTOC) for predicting cancer risk. Polycomb genes, methylation increase correlates with the estimated rate of stem cell division.

- Putin, Evgeny, Polina Mamoshina, Alexander Aliper, Mikhail Korzinkin, Alexey Moskalev, Alexey Kolosov, Alexander Ostrovskiy, Charles Cantor, Jan Vijg, and Alex Zhavoronkov. “Deep Biomarkers of Human Aging: Application of Deep Neural Networks to Biomarker Development.” Aging 8, no. 5 (2016): 1021–33. https://doi.org/10.18632/aging.100968. - Predicting age from blood biomarkers using deep neural networks. 21 DNNs tested, outperform simpler machine learning algorithms. Feature selection. Online version: http://www.aging.ai/

### Human

- Levine, Morgan E., Ake T. Lu, Austin Quach, Brian H. Chen, Themistocles L. Assimes, Stefania Bandinelli, Lifang Hou, et al. “An Epigenetic Biomarker of Aging for Lifespan and Healthspan.” Aging 10, no. 4 (18 2018): 573–91. https://doi.org/10.18632/aging.101414. - DNA PhenoAge clock predicting multi-tissue, multi-disease age-associated mortality risk. Outperforms the original Horvath and Hannum clocks. Data: [Levine_2018](data/Levine_2018/)

- Yang, Zhen, Andrew Wong, Diana Kuh, Dirk S. Paul, Vardhman K. Rakyan, R. David Leslie, Shijie C. Zheng, Martin Widschwendter, Stephan Beck, and Andrew E. Teschendorff. “Correlation of an Epigenetic Mitotic Clock with Cancer Risk.” Genome Biology 17, no. 1 (03 2016): 205. https://doi.org/10.1186/s13059-016-1064-3. - Mitotic epigenetic clock (epiTOC) for predicting cancer risk. Polycomb genes, methylation increase correlates with the estimated rate of stem cell division. Data: [Yang_2016](data/Yang_2016/)

### Mouse

- Petkovich, Daniel A., Dmitriy I. Podolskiy, Alexei V. Lobanov, Sang-Goo Lee, Richard A. Miller, and Vadim N. Gladyshev. “Using DNA Methylation Profiling to Evaluate Biological Age and Longevity Interventions.” Cell Metabolism 25, no. 4 (April 4, 2017): 954-960.e6. https://doi.org/10.1016/j.cmet.2017.03.016. - Mouse epigenetic clock predicting biological age. 90 CpGs, blood. Distinct from human epigenetic clock. Reduced Representation Bisulfite Sequencing. mm10 genomic coordinates are available in [Table S3](https://www.cell.com/cms/10.1016/j.cmet.2017.03.016/attachment/08ea219a-4d0a-430b-9062-0bc103e20c20/mmc4.xlsx), [Petkovich_2017_mouse.xlsx](data/Petkovich_2017_mouse.xlsx)



## Reviews

-  Human DNA methylation aging clock, its association with cancer, immune system, metabolism, cell- and nucleic acid processes. Key references to major studies. DNAm clock is different from telomere shortening, BMI, lower than expected in some cancers.
    - Nwanaji-Enwerem, Jamaji C., Marc G. Weisskopf, and Andrea A. Baccarelli. “Multi-Tissue DNA Methylation Age: Molecular Relationships and Perspectives for Advancing Biomarker Utility.” Ageing Research Reviews 45 (August 2018): 15–23. https://doi.org/10.1016/j.arr.2018.04.005.

- Short review about methylation (epigenetic) age clock in human and mice. Direct overlap is low, morphogenesis and development are general themes of functional enrichment. [Table 1](https://genomebiology.biomedcentral.com/articles/10.1186/s13059-017-1245-8#Tab1) listing epigenetic clock studies and their features.
    - Wagner, Wolfgang. “Epigenetic Aging Clocks in Mice and Men.” Genome Biology 18, no. 1 (14 2017): 107. https://doi.org/10.1186/s13059-017-1245-8.


## Tools

- https://aging.shinyapps.io/epigeneticclock/ - Calculate DNA methylation age using Horvath 2013 method. GitHub: https://github.com/aldringsvitenskap/epigeneticclock

- http://www.aging.ai/ - Predict biological age from blood biomarkers

- https://www.how-old.net - Detect age by photo