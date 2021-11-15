ARG BASE_CONTAINER=jupyter/minimal-notebook
FROM $BASE_CONTAINER
LABEL author="Akitsuyoshi"
USER root
RUN pip install numpy matplotlib nb_black
# Switch back to jovyan to avoid accidental container runs as root
USER $NB_UID
