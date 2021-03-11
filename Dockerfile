FROM jupyter/datascience-notebook

COPY requirements.txt ./
RUN pip install -U pip
RUN pip install --no-cache-dir -r requirements.txt

ENV JUPYTER_ENABLE_LAB=yes

ENTRYPOINT ["jupyter", "lab", "--ip=0.0.0.0", "--allow-root"]