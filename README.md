# Data and papers related to various clocks predicting age

Note the original [Aging](https://github.com/mdozmorov/Aging) repository containing much more [epigenetic clock-related data](https://github.com/mdozmorov/Aging/tree/master/data). This repository is a more systematic attempt to collect aging clock data and should eventually supersede the [Aging](https://github.com/mdozmorov/Aging) repository.

* [Papers](#papers)
* [Reviews](#reviews)
* [Tools](#tools)

## Papers

- Galkin, Fedor, Alexander Aliper, Evgeny Putin, Igor Kuznetsov, Vadim N Gladyshev, and Alex Zhavoronkov. “Human Microbiome Aging Clocks Based on Deep Learning and Tandem of Permutation Feature Importance and Accumulated Local Effects.” BioRxiv, January 1, 2018, 507780. https://doi.org/10.1101/507780. - Mitotic epigenetic clock (epiTOC) for predicting cancer risk. Polycomb genes, methylation increase correlates with the estimated rate of stem cell division.

- Levine, Morgan E., Ake T. Lu, Austin Quach, Brian H. Chen, Themistocles L. Assimes, Stefania Bandinelli, Lifang Hou, et al. “An Epigenetic Biomarker of Aging for Lifespan and Healthspan.” Aging 10, no. 4 (18 2018): 573–91. https://doi.org/10.18632/aging.101414. - DNA PhenoAge clock predicting multi-tissue, multi-disease age-associated mortality risk. Outperforms the original Horvath and Hannum clocks. Data: [Levine_2018](data/Levine_2018/)

- Yang, Zhen, Andrew Wong, Diana Kuh, Dirk S. Paul, Vardhman K. Rakyan, R. David Leslie, Shijie C. Zheng, Martin Widschwendter, Stephan Beck, and Andrew E. Teschendorff. “Correlation of an Epigenetic Mitotic Clock with Cancer Risk.” Genome Biology 17, no. 1 (03 2016): 205. https://doi.org/10.1186/s13059-016-1064-3. - Mitotic epigenetic clock (epiTOC) for predicting cancer risk. Polycomb genes, methylation increase correlates with the estimated rate of stem cell division. Data: [Yang_2016](data/Yang_2016/)



## Reviews

-  Human DNA methylation aging clock, its association with cancer, immune system, metabolism, cell- and nucleic acid processes. Key references to major studies. DNAm clock is different from telomere shortening, BMI, lower than expected in some cancers.
    - Nwanaji-Enwerem, Jamaji C., Marc G. Weisskopf, and Andrea A. Baccarelli. “Multi-Tissue DNA Methylation Age: Molecular Relationships and Perspectives for Advancing Biomarker Utility.” Ageing Research Reviews 45 (August 2018): 15–23. https://doi.org/10.1016/j.arr.2018.04.005.

- Short review about methylation (epigenetic) age clock in human and mice. Direct overlap is low, morphogenesis and development are general themes of functional enrichment. [Table 1](https://genomebiology.biomedcentral.com/articles/10.1186/s13059-017-1245-8#Tab1) listing epigenetic clock studies and their features.
    - Wagner, Wolfgang. “Epigenetic Aging Clocks in Mice and Men.” Genome Biology 18, no. 1 (14 2017): 107. https://doi.org/10.1186/s13059-017-1245-8.


## Tools

- `epigeneticclock` - Calculate DNA methylation age using Horvath 2013 method, https://github.com/aldringsvitenskap/epigeneticclock, Shiny app, https://aging.shinyapps.io/epigeneticclock/
