FROM debian:bullseye-slim

ENV DEBIAN_FRONTEND=noninteractive

# Installation de Python 2.7 + outils Unix courants
RUN apt-get update && apt-get install -y --no-install-recommends \
    python2 \
    curl \
    wget \
    git \
    vim \
    unzip \
    ca-certificates \
    && ln -s /usr/bin/python2 /usr/bin/python \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Installation de pip pour Python 2.7
RUN curl -sS https://bootstrap.pypa.io/pip/2.7/get-pip.py -o get-pip.py \
    && python get-pip.py \
    && rm get-pip.py

# Répertoire de travail
WORKDIR /workspace

# Commande par défaut
CMD ["python"]

