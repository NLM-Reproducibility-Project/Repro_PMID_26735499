# Repro_PMID_26735499-
Reproducing Preferential Allele Expression Analysis Identifies Shared Germline and Somatic 
Driver Genes in Advanced Ovarian Cancer
Halabi, Najeeb M., et al. "Preferential allele expression analysis identifies shared germline 
and somatic driver genes in advanced ovarian cancer." PLoS genetics 12.1 (2016): e1005755.


## Reproducbility

### What is reproducibility?
* Reproducibility is

### Main Objectives
* Main objective: reproduce all plots and charts in the paper.

### Questions
* Can the process be run in a reasonable amount of time on AWS?
* Does using the latest versions of the software packages used in the original paper result in 
different outcomes?


## Data
The study used both exome and RNA sequence data. A table containing metadata on each sample can 
be found [here](https://www.ncbi.nlm.nih.gov/Traces/study/?WebEnv=NCID_1_113376875_130.14.22.33_5555_1537880901_155876256_0MetA0_S_HStore&query_key=6)

The authors provided their RNA and exome sequence data (28 samples in total) on the GEO 
database with accession number GSE75935. Querying GEO with this accession number, we found and 
downloaded the sequences associated with the study - all 28 sequences associated with the 
Sequence Read Archive (SRA) identifier SRP067276. To download the data, we used the `prefetch` 
command in the National Center for Biotechnology Information's SRA toolkit (installation instructions available 
[here](https://trace.ncbi.nlm.nih.gov/Traces/sra/sra.cgi?view=toolkit_doc&f=std#s-4)). To 
convert the SRA files to fastq format, we used the `fastq-dump` command. Shell scripts to 
download and convert the files can be found in the [scripts folder][./scripts] of this 
repository].



## Dependencies
* Docker


# Docker
