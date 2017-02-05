FROM andrewosh/binder-base

MAINTAINER Leighton Pritchard <leighton.pritchard@hutton.ac.uk>

USER root

# Add dependency
RUN apt-get update
RUN apt-get install -y ncbi-blast+

USER main

XX=$HOME/.jupyter

RUN mkdir XX
RUN echo "c.NotebookApp.token = ''" >> XX/jupyter_notebook_config.py

# Install requirements for Python 3
RUN /home/main/anaconda/envs/python3/bin/pip install -r requirements.txt