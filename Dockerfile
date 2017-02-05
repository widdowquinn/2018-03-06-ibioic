FROM andrewosh/binder-base

USER root

# Add dependency
RUN apt-get update
RUN apt-get install -y ncbi-blast+

USER main

# Get rid of token/password requests
RUN mkdir -p $HOME/.jupyter
RUN echo "c.NotebookApp.token = ''" >> $HOME/.jupyter/jupyter_notebook_config.py

# Install requirements for Python 3
RUN /home/main/anaconda/envs/python3/bin/pip install -r requirements.txt