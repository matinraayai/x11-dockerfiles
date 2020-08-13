FROM debian:bullseye-slim
LABEL maintainer "Matin Raayai Ardakani raayaiardakani.m@northeastern.edu"

RUN apt-get update && apt-get upgrade -y && apt-get install -y openconnect iptables \
    libtool libxml2 sudo gettext liboath0 libstoken1 \
    p11-kit trousers libpcsclite1 iputils-ping oathtool openssh-client \ 
    nfs-common cifs-utils xauth --no-install-recommends \
    && apt-get clean && rm -rf /var/lib/apt/lists/*
CMD ["/bin/bash"]
