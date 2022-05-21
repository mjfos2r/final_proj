#lol dependency hell is real. If i was a ~real~ programmer I'd just feed an array of dependencies into a loop but dear god it could barely handle regular mirror decl. 
#also thanks berkeley for doing maintenance on your CRAN mirror/getting ddos'd while I'm trying to debug why none of my dependencies are installing.
# I should add that despite the below being the not berkeley one, my env was using berkeley's anyway even when declared otherwise.
# 
# This is the one that worked.
#                  
#hell begins below 
# depchecks
if(!require("tidyverse")) install.packages("tidyverse",repos = "http://cran.us.r-project.org")
if(!require("datasets")) install.packages("datasets",repos = "http://cran.us.r-project.org")
if(!require("nycflights13")) install.packages("nycflights13",repos = "http://cran.us.r-project.org")
if(!require("stringr")) install.packages("stringr",repos = "http://cran.us.r-project.org")
if(!require("ath1121501cdf")) install.packages("ath1121501cdf",repos = "http://cran.us.r-project.org")
if(!require("ath1121501.db")) install.packages("ath1121501.db",repos = "http://cran.us.r-project.org")
if(!require("annotate")) install.packages("e",repos = "http://cran.us.r-project.org")
if(!require("affy")) install.packages("affy",repos = "http://cran.us.r-project.org")
if(!require("limma")) install.packages("limma",repos = "http://cran.us.r-project.org")
if(!require("oligo")) install.packages("oligo",repos = "http://cran.us.r-project.org")
if(!require("dplyr")) install.packages("dplyr",repos = "http://cran.us.r-project.org")
if(!require("stats")) install.packages("stats",repos = "http://cran.us.r-project.org")
if(!require("reshape")) install.packages("reshape",repos = "http://cran.us.r-project.org")
if(!require("pathview")) install.packages("pathview",repos = "http://cran.us.r-project.org")
if(!require("gage")) install.packages("gage",repos = "http://cran.us.r-project.org")
if(!require("gageData")) install.packages("gageData",repos = "http://cran.us.r-project.org")
if(!require("imager")) install.packages("imager",repos = "http://cran.us.r-project.org")
if(!require("DESeq2")) install.packages("DESeq2",repos = "http://cran.us.r-project.org")
if(!require("apeglm")) install.packages("apeglm",repos = "http://cran.us.r-project.org")
if(!require("AnnotationDbi")) install.packages("AnnotationDbi",repos = "http://cran.us.r-project.org")
if(!require("org.Mm.eg.db")) install.packages("org.Mm.eg.db",repos = "http://cran.us.r-project.org")
if(!require("GOPlot")) install.packages("GOPlot",repos = "http://cran.us.r-project.org")
if(!require("ggplot2")) install.packages("ggplot2",repos = "http://cran.us.r-project.org")
if(!require("ggtree")) install.packages("ggtree",repos = "http://cran.us.r-project.org")
if(!require("treeio")) install.packages("treeio",repos = "http://cran.us.r-project.org")
if(!require("BAMMtools")) install.packages("BAMMtools",repos = "http://cran.us.r-project.org")
if(!require("ape")) install.packages("ape",repos = "http://cran.us.r-project.org")
if(!require("adegraphics")) install.packages("adegraphics",repos = "http://cran.us.r-project.org")
if(!require("treespace")) install.packages("treespace",repos = "http://cran.us.r-project.org")
if(!require("Biostrings")) install.packages("Biostrings",repos = "http://cran.us.r-project.org")
if(!require("msa")) install.packages("msa",repos = "http://cran.us.r-project.org")
if(!require("seqinr")) install.packages("seqinr",repos = "http://cran.us.r-project.org")
if(!require("DECIPHER")) install.packages("DECIPHER",repos = "http://cran.us.r-project.org")
if(!require("locfit")) install.packages("locfit",repos = "http://cran.us.r-project.org")
if(!require("Rsamtools")) install.packages("Rsamtools",repos = "http://cran.us.r-project.org")
if(!require("IRanges")) install.packages("IRanges",repos = "http://cran.us.r-project.org")
if(!require("SummarizedExperiment")) install.packages("SummarizedExperiment",repos = "http://cran.us.r-project.org")
if(!require("bumphunter")) install.packages("bumphunter",repos = "http://cran.us.r-project.org")
if(!require("GenomicRanges")) install.packages("GenomicRanges",repos = "http://cran.us.r-project.org")
if(!require("gmapR")) install.packages("gmapR",repos = "http://cran.us.r-project.org")
if(!require("rtracklayer")) install.packages("rtracklayer",repos = "http://cran.us.r-project.org")
if(!require("VariantAnnotation")) install.packages("VariantAnnotation",repos = "http://cran.us.r-project.org")
if(!require("VariantTools")) install.packages("VariantTools",repos = "http://cran.us.r-project.org")
if(!require("systemPipeR")) install.packages("systemPipeR",repos = "http://cran.us.r-project.org")
if(!require("karyoploteR")) install.packages("karyoploteR",repos = "http://cran.us.r-project.org")


# literal spaghetti code I don't know how I even managed to get a functioning final pub.
# install.packages("ath1121501cdf")
# library(ath1121501cdf)
# install.packages("ath1121501.db")
# library(ath1121501.db)
# the above didn't work. via bioconductor, this is how to install it on Win10
# A version of this package for your version of R might be available elsewhere,
# see the ideas at
# https://cran.r-project.org/doc/manuals/r-patched/R-admin.html#Installing-packages
if (!require("BiocManager", quietly = FALSE))
  install.packages("BiocManager")
# Lord forgive this next block of code.
# ^update it's much nicer now. 
BiocManager::install("ath1121501cdf")
#works now!
BiocManager::install("ath1121501.db")
#install.packages("annotate")
#didn't work, can get through bioconductor
BiocManager::install("annotate")
#install.packages("affy")
BiocManager::install("affy")
#install.packages("limma")
BiocManager::install("limma")
#install.packages("oligo")
BiocManager::install("oligo")
install.packages("dplyr")
#BiocManager::install("dplyr")
install.packages("stats")
#BiocManager::install("stats")
install.packages("reshape")
#BiocManager::install("reshape")
#
#
library(ath1121501cdf)
library(ath1121501.db)
library(annotate)
library(affy)
library(affyio)
library(limma)
library(oligo)
library(dplyr)
library(stats)
library(reshape)

# but wait, there's more.
