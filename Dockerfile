#use an official Miniconda3 runtime as a parent image
FROM continuumio/miniconda3
MAINTAINER Sara Jones

#install software for retrieving sequences from SRA
RUN conda install -c bioconda sra-tools
#set up download/cache area for downloaded files and references
#RUN /vdb-config -i 

#install software for exome-seq alignment
RUN conda install -c bioconda bwa
RUN conda install -c bioconda gatk

#install software for rna-seq alignment
RUN conda install -c bioconda star

#install other software needed for seq processing
RUN conda install -c bioconda samtools
RUN conda install -c bioconda picard

#install software for variant calling and annotation
RUN conda install -c bioconda varscan
RUN conda install -c bioconda snpeff

#install software to run snakemake
#RUN conda install -c bioconda snakemake
RUN conda install -c bioconda -c conda-forge snakemake
