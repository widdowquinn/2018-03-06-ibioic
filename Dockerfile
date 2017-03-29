# This Dockerfile is intended primarily for use under MyBinder.org

FROM andrewosh/binder-base

USER root

# Add dependency
RUN apt-get update

# Install other dependencies via apt-get
RUN $HOME/notebooks/install-apps.sh

USER main

# Get rid of token/password requests
RUN mkdir -p $HOME/.jupyter
RUN echo "c.NotebookApp.token = ''" >> $HOME/.jupyter/jupyter_notebook_config.py

# Install requirements for Python 3
RUN /home/main/anaconda/envs/python3/bin/pip install -r requirements.txt
RUN /home/main/anaconda/envs/python3/bin/python -m ipykernel install --user --name Python3_ibioic_course --display-name "Python 3 (IBioIC)"
