FROM jupyter/base-notebook:python-3.7

USER root

RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    && rm -rf /var/lib/apt/lists/*

USER ${NB_USER}

WORKDIR /home/jovyan

RUN pip install --no-cache-dir --upgrade pip
RUN pip install --no-cache-dir Cython numpy==1.16.2
RUN pip install --no-cache-dir matplotlib==3.0.3
RUN pip install --no-cache-dir --pre topicexplorer
