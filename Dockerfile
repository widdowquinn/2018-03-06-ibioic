FROM andrewosh/binder-base

USER main

# Fix Jupyter token/password request
xx=$HOME/.jupyter
RUN mkdir xx
RUN echo "c.NotebookApp.token = ''" >> xx/jupyter_notebook_config.py

# Install Python packages
RUN pip install -r requirements.txt