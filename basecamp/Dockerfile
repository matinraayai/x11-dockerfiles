FROM ubuntu:latest

LABEL maintainer="Matin Raayai Ardakani raayaiardakani.m@northeastern.edu"

ARG BASECAMP_VERSION=0.5.0
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get upgrade -y wget ca-certificates xz-utils librust-gobject-sys-dev libx11-6 \
    libx11-xcb1 libxcomposite1 libxcursor1 libxdamage1 libxext6 libxi6 libxtst6 libnss3 libdbus-1-3 \
    librust-gdk-pixbuf-sys-dev libgtk-3-0 libxss1 pulseaudio libdrm2 libgbm1 --no-install-recommends && \
	apt-get clean && rm -rf /var/lib/apt/lists/*
RUN wget https://github.com/arturock/basecamp-linux/releases/download/v"$BASECAMP_VERSION"/basecamp-"$BASECAMP_VERSION"-linux-x64.tar.xz && \
    tar xvf basecamp-"$BASECAMP_VERSION"-linux-x64.tar.xz && rm basecamp-"$BASECAMP_VERSION"-linux-x64.tar.xz
CMD ["/basecamp-linux-x64/basecamp"]
