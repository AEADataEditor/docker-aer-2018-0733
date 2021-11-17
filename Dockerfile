FROM rocker/r-ver:3.6.3

COPY setup.R .
RUN Rscript setup.R


