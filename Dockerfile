# Dockerfile for reproducing exome and rna sequence alignment
FROM lh3lh3/bwa
MAINTAINER Leo Meister

RUN apt-get update
RUN apt-get install sra-toolkit
RUN mkdir /opt/
WORKDIR /opt/

# SRA Toolkit install
RUN wget http://ftp-trace.ncbi.nlm.nih.gov/sra/sdk/2.6.2/sratoolkit.2.6.2-ubuntu64.tar.gz
RUN tar zxvf sratoolkit.2.6.2-ubuntu64.tar.gz
RUN ln -s /notebook/sratoolkit.2.6.2-ubuntu64/bin/* /usr/local/bin/

# STAR install
RUN wget https://github.com/alexdobin/STAR/archive/STAR_2.4.1c.tar.gz
RUN tar zxvf STAR_2.4.1c.tar.gz
RUN cd STAR-STAR_2.4.1c/source && make STAR
RUN ln -s /notebook/STAR-STAR_2.4.1c/bin/Linux_x86_64/STAR /usr/local/bin/
