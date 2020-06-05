FROM debian:buster-slim
RUN apt-get update && apt-get install -y openconnect iptables \
    libtool libxml2 sudo gettext liboath0 libstoken1 \
    p11-kit trousers libpcsclite1 iputils-ping oathtool openssh-client \
    firefox-esr pulseaudio xauth xorg --no-install-recommends \
    && apt-get clean && rm -rf /var/lib/apt/lists/*
CMD ["/bin/bash"]
