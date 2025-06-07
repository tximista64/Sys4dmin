FROM ubuntu:22.04

# Install dependencies + PowerShell
RUN apt-get update && apt-get install -y \
    wget apt-transport-https software-properties-common \
    && wget -q https://packages.microsoft.com/config/ubuntu/22.04/packages-microsoft-prod.deb \
    && dpkg -i packages-microsoft-prod.deb \
    && apt-get update \
    && apt-get install -y powershell \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /scripts

# Default command
ENTRYPOINT ["pwsh"]

