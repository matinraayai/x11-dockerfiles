FROM ubuntu:latest
LABEL maintainer="Matin Raayai Ardakani raayaiardakani.m@northeastern.edu"
ARG ARDUINO_VERSION=1.8.13

ARG DEBIAN_FRONTEND=noninteractive
# Pre-reqs Installation
RUN apt-get update && apt-get -y upgrade && \
    apt-get install -y wget sudo ca-certificates xz-utils libx11-6 libxext6 libxrender1 \
    libxtst6 libxi6 --no-install-recommends && \
	apt-get clean && rm -rf /var/lib/apt/lists/*
RUN wget https://downloads.arduino.cc/arduino-$ARDUINO_VERSION-linux64.tar.xz && \
    tar xvf arduino-$ARDUINO_VERSION-linux64.tar.xz && \
    rm arduino-$ARDUINO_VERSION-linux64.tar.xz && \
    cd arduino-$ARDUINO_VERSION && ./install.sh
CMD ["arduino"]
