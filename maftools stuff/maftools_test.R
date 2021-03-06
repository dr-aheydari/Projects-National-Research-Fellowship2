# this is an experiment with the maftools



# need this package 
# install.packages("devtools")

# #Install Bioconductor dependencies.
# if (!requireNamespace("BiocManager", quietly=TRUE))
#   install.packages("BiocManager")
# BiocManager::install("ComplexHeatmap")
# BiocManager::install("VariantAnnotation")
# BiocManager::install("Biostrings")

#Install maftools from github repository.
library("devtools")
install_github(repo = "PoisonAlien/maftools")
 n

require(maftools)

#laml.maf = system.file('extdata', 'TCGA.GBM.mutect.da904cd3-79d7-4ae3-b6c0-e7127998b3e6.DR-10.0.somatic.maf.gz', package = 'maftools') #path to TCGA LAML MAF file

#laml<- read.maf(maf ="TCGA.GBM.mutect.da904cd3-79d7-4ae3-b6c0-e7127998b3e6.DR-10.0.somatic.maf.gz", useAll = T, verbose = T)

getwd()
setwd("/Users/aliheydari/Desktop/R_maftools")
  
data <- read.maf(maf = "mutect.maf")

getSampleSummary(data)

plotmafSummary(maf = data, rmOutlier = TRUE, addStat = 'median', dashboard = TRUE, titvRaw = FALSE)

#We will draw oncoplots for top ten mutated genes.
oncoplot(maf = data, top = 10, fontSize = 12)

geneCloud(input = data, minMut = 5)


