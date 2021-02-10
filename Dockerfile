FROM vandaele/mixtcomp-notebook

COPY *.csv ${HOME}/
COPY *.ipynb ${HOME}/
COPY README ${HOME}/
USER root
RUN chown -R ${NB_UID} ${HOME}
USER ${NB_USER}
