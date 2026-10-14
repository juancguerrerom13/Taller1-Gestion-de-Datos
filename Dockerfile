FROM quay.io/jupyter/scipy-notebook:latest

# Instalar git-lfs como root (los datos de Olist están en Git LFS)
USER root
RUN apt-get update \
    && apt-get install -y --no-install-recommends git-lfs \
    && git lfs install --system \
    && rm -rf /var/lib/apt/lists/*

# Volver al usuario no privilegiado de la imagen
USER ${NB_UID}

# Instalar las librerías del proyecto
COPY requirements.txt /tmp/requirements.txt
RUN pip install --no-cache-dir -r /tmp/requirements.txt

WORKDIR /home/jovyan/work
