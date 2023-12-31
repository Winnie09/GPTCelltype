GPTCelltype: Automatic cell type annotation with GPT-4
====

## Installation 

To install the latest version of GPTCelltype package via Github, run the following commands in R:
```{r eval = FALSE}
remotes::install_github("Winnie09/GPTCelltype")
```
GPTCelltype depends on the R package [openai](https://cran.r-project.org/web/packages/openai/index.html). Please install `openai` as well. 

```{r eval = FALSE}
install.packages("openai")
```
Please find information about trouble shooting below.

## Quick Start 
```{r eval = FALSE}
Sys.setenv(OPENAI_API_KEY = 'your_openai_API_key')
library(GPTCelltype)
library(openai)
res <- gptcelltype(all.markers, 
            tissuename = 'human PBMC', 
            model = 'gpt-4'
)
```
where **all.markers** is the output object from the Seurat function **FindAllMarkers()**. 

## Vignette
You can view the complete vignette [here](https://winnie09.github.io/Wenpin_Hou/pages/gptcelltype.html).

## Trouble Shooting

GPTCelltype software can be installed via Github in seconds. Users should have R > 3.5.x installed. R can be downloaded here: http://www.r-project.org/.

For Windows users, Rtools is also required to be installed. Rtools can be downloaded here: (https://cloud.r-project.org/bin/windows/Rtools/). For R version 3.5.x, Rtools35.exe is recommended. Use default settings to perform the installation.

For mac users, if there is any problem with installation problem, please try download and install clang-8.0.0.pkg from the following URL: https://cloud.r-project.org/bin/macosx/tools/clang-8.0.0.pkg


## Introduction
Cell type annotation is an essential step in single-cell RNA-seq analysis. However, it is a time-consuming process that often requires expertise in collecting canonical marker genes and manually annotating cell types. Automated cell type annotation methods typically require the acquisition of high-quality reference datasets and the development of additional pipelines. We assessed the performance of GPT-4, a highly potent large language model, for cell type annotation, and demonstrated that it can automatically and accurately annotate cell types by utilizing marker gene information generated from standard single-cell RNA-seq analysis pipelines. Evaluated across hundreds of tissue types and cell types, GPT-4 generates cell type annotations exhibiting strong concordance with manual annotations and has the potential to considerably reduce the effort and expertise needed in cell type annotation. We also developed this software, **GPTCelltype**, an open-source R software package to facilitate cell type annotation by GPT-4.

## Citation

Hou, W. and Ji, Z., 2023. Assessing GPT-4 for cell type annotation in single-cell RNA-seq analysis. [bioRxiv, pp.2023-04, doi: https://doi.org/10.1101/2023.04.16.537094](https://www.biorxiv.org/content/10.1101/2023.04.16.537094v2). 


## Contact

Authors: Wenpin Hou (wh2526@cumc.columbia.edu), Zhicheng Ji (zhicheng.ji@duke.edu).

Report bugs and provide suggestions by sending email to the maintainer Dr. Wenpin Hou (wh2526@cumc.columbia.edu) or open a new issue on this Github page. 
