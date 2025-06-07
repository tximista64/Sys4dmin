FROM ubuntu:20.04

# Évite les prompts interactifs
ENV DEBIAN_FRONTEND=noninteractive

# Mise à jour et installation de Python 2.7
RUN apt-get update && \
    apt-get install -y python2 curl && \
    ln -s /usr/bin/python2 /usr/bin/python && \
    apt-get install -y wget && \
    apt-get install -y git && \
    apt-get install -y vim && \
    apt-get install -y unzip && \
    apt-get install -y apt && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Ajout de pip pour Python 2.7 (optionnel mais pratique)
RUN curl https://bootstrap.pypa.io/pip/2.7/get-pip.py -o get-pip.py && \
    python get-pip.py && \
    rm get-pip.py

# Définir un dossier de travail
WORKDIR /workspace

# Commande par défaut
CMD [ "python" ]

