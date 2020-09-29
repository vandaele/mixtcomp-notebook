FROM vandaele/mixtcomp-notebook

COPY *.csv ${HOME}/work/
COPY *.ipynb ${HOME}/work/
USER root
RUN chown -R ${NB_UID} ${HOME}
USER ${NB_USER}