FROM jupyter/r-notebook:r-4.1.0

RUN echo 'options(repos = c(REPO_NAME = "https://packagemanager.rstudio.com/all/latest"))' > .Rprofile

COPY install.R .
RUN Rscript install.R
RUN rm install.R