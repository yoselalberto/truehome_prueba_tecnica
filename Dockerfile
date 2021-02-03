FROM jupyter/datascience-notebook:d113a601dbb8

LABEL maintainer="Alberto Jaimes <yoselerratil@gmail.com>"  

# update repositories
USER root
RUN  apt-get update && pip install --upgrade pip 
USER $NB_UID

