FROM nvidia/opengl:1.2-glvnd-runtime-ubuntu20.04
LABEL maintainer="Matin Raayai Ardakani raayaiardakani.m@northeastern.edu"

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get -y upgrade && apt-get install -y \
      curl \
      ca-certificates \
      wget \
      zip unzip \
      librust-gobject-sys-dev \
      libnss3 \
      libatk-bridge2.0-0 \
      libx11-xcb1 \
      libcups2 \
      libdrm2 \
      libxkbcommon0 \
      libxcomposite1 \
      libxdamage1 \
      libxext6 \
      libxfixes3 \
      libxrandr2 \
      libwayland-client0 \
      libgtk-3-0 \
      libgbm1 \
      pulseaudio \
      --no-install-recommends \
      && rm -rf /var/lib/apt/lists/*

RUN wget https://raw.githubusercontent.com/scheib/chromium-latest-linux/master/update.sh && \
    chmod +x update.sh && ./update.sh && rm update.sh

CMD [ "/latest/chrome" ]
