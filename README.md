# Smith et al. "Comparative transcriptomics provides insight into molecular mechanisms of zinc tolerance in the ectomycorrhizal fungus Suillus luteus"

Data and analysis to accompany Smith et al., "Comparative transcriptomics provides insight into molecular mechanisms of zinc tolerance in the ectomycorrhizal fungus Suillus luteus"

- SluteusRNA.Rproj: Rstudio project file for all analyses

All code can be found within one R markdown file:

- Sluteus.Rmd: Code for all analyses for the project

### Data

- counts: folder containing count files for all samples produced from HISAT2 analyses

- Suilu4_GeneCatalog_proteins_20170628_GO.tab: GO annotation file downloaded from JGI Mycocosm

- sampledata.csv: file used for DESeq analyses, contains sample IDs and library names

- treatData.csv: file used for DESeq analyses, contains treatment data

### Figures

- DEGsumplot.png: Figure 3 from the manuscript, summarizing the number of DEGs in each contrast

- ECplot.png: Figure 1 from the manuscript, summarizing the EC50 values of each isolate

- VolInte.png - VolZne.png: all Volcano Plots for the 10 isolates and 3 model contrasts (13 total)

- pcaTvSa.png: Figure 2 from the manuscript, PCA plot of the gene expression of all samples

- vennmaintot.png: Supplemental Figure 1, Venn diagram of all DEGs from the 3 model contrasts

### Tables

- DEGInte.txt: list of DEGs from the interaction contrast

- DEGTvSe.txt: list of DEGs from the tolerance contrast

- DEGZne.txt: list of DEGs from the zinc contrast

- DEGall.txt: list of DEGs from all 3 contrasts 
- DEGall1.txt: list of DEGs from all 3 contrasts, lfc > 1 
- annastInte.csv: DESeq results for candidate genes for the interaction contrast

- annastSzn.csv: DESeq results for candidate genes for sensitive isolates for the zinc contrast (used for Table 1)

- annastTvSe.csv: DESeq results for candidate genes for the tolerance contrast (used for Table 1)

- annastTzn.csv: DESeq results for candidate genes for tolerant isolates for the zinc contrast (used for Table 1)

- annastzne.csv: DESeq results for candidate genes for the zinc contrast (used for Table 1)

- comparisonLm12.deseq.csv - comparisonSl20.deseq.csv: DESeq results tables for DESeq analyses for individual isolates

- normcountsLm12.csv - normcountsSl20.csv: normalized count files from DESeq analyses for individual isolates

- zntrnsInte.csv: DESeq results for known zinc transporters for the interaction contrast

- zntrnsSzn.csv: DESeq results for known zinc transporters for sensitive isolates for the zinc contrast (used for Table 1)

- zntrnsTvSe.csv: DESeq results for known zinc transporters for the tolerance contrast (used for Table 1)

- zntrnsTzn.csv: DESeq results for known zinc transporters for tolerant isolates for the zinc contrast (used for Table 1)

- zntrnszne.csv: DESeq results for known zinc transporters for the zinc contrast (used for Table 1)
