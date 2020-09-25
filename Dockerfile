FROM jupyter/r-notebook:612aa5710bf9

COPY install.R .
RUN Rscript install.R

COPY . ${HOME}/work
USER root
RUN chown -R ${NB_UID} ${HOME}
USER ${NB_USER}