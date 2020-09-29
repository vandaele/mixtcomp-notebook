FROM vandaele/mixtcomp-notebook

COPY . ${HOME}/work
USER root
RUN chown -R ${NB_UID} ${HOME}
USER ${NB_USER}