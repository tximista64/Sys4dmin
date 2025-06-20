FROM debian:bookworm-slim

ENV DEBIAN_FRONTEND=noninteractive
ENV LANG=fr_FR.UTF-8
ENV TERM=xterm

# Mise à jour et installation des paquets disponibles via APT
RUN apt-get update && apt-get install -y \
    locales gnupg2 ca-certificates curl wget git unzip \
    zsh neovim man-db sudo \
    python3 python3-pip python3-dev build-essential \
    ruby ruby-dev \
    gcc g++ \
    nmap sqlmap hydra john hashcat netcat-openbsd \
    binwalk foremost exiftool steghide file \
    wireshark tshark tcpdump socat ffuf dnsenum dnsutils \
    dirb \
    ltrace strace gdb \
    libpcap-dev libffi-dev libssl-dev \
    && echo "fr_FR.UTF-8 UTF-8" > /etc/locale.gen && locale-gen fr_FR.UTF-8 \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Rockyou wordlist
RUN ln -s /usr/share/wordlists/rockyou.txt.gz /rockyou.txt.gz && gunzip /rockyou.txt.gz || true

# Outils Python
RUN pip3 install --no-cache-dir haiti pwntools \
    && pip3 install --no-cache-dir git+https://github.com/Pennyw0rth/NetExec.git

# zsteg (via RubyGem)
RUN gem install zsteg

# radare2 (via GitHub script officiel)
RUN git clone https://github.com/radareorg/radare2.git /opt/radare2 && \
    /opt/radare2/sys/install.sh && \
    rm -rf /opt/radare2

# nikto (via GitHub)
RUN git clone https://github.com/sullo/nikto.git /opt/nikto && \
    ln -s /opt/nikto/nikto.pl /usr/local/bin/nikto

# responder (via GitHub)
RUN git clone https://github.com/lgandx/Responder.git /opt/Responder

# seclists (via GitHub)
RUN git clone https://github.com/danielmiessler/SecLists.git /opt/SecLists

# .zshrc personnalisé + Oh My Zsh
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended \
    && wget -O /root/.zshrc https://raw.githubusercontent.com/tximista64/Sys4dmin/master/zshrc

# GEF pour GDB
RUN wget -O /root/.gdbinit https://gef.blah.cat/py

# Répertoire de travail
WORKDIR /ctf

# Shell par défaut
CMD ["/bin/zsh"]

