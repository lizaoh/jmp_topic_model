FROM python:3.7

# install system build tools (needed for vsm / numpy etc.)
RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    && rm -rf /var/lib/apt/lists/*

# upgrade pip (important for old packages)
RUN pip install --no-cache-dir --upgrade pip

# install build dependencies first
RUN pip install --no-cache-dir Cython numpy==1.16.2

# install rest of stack
RUN pip install --no-cache-dir matplotlib==3.0.3

# install topicexplorer
RUN pip install --no-cache-dir --pre topicexplorer
