FROM jupyter/datascience-notebook:5cb007f03275

LABEL maintainer="Alberto Jaimes <yoselerratil@gmail.com>"  

# update repositories
USER root
RUN  apt-get update && pip install --upgrade pip 
USER $NB_UID

