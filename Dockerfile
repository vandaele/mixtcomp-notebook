FROM vandaele/mixtcomp-notebook

COPY *.csv ${HOME}/
COPY *.ipynb ${HOME}/
USER root
RUN chown -R ${NB_UID} ${HOME}
RUN rmdir work
USER ${NB_USER}