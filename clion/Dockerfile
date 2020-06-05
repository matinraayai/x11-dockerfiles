FROM nvidia/cuda:10.2-cudnn7-devel
LABEL maintainer "Matin Raayai Ardakani raayaiardakani.m@northeastern.edu"
# CLion Installation
ARG CLION_VERSION=2020.1.2
RUN apt-get update && apt-get install -y wget libxrender1 libxtst6 \
    libxtst-dev libxext-dev libxrender-dev libfreetype6-dev \
    libfontconfig1 git cmake ca-certificates libgtk-3-0 libglib2.0-0 \
    libexpat1 libx11-6 libfontconfig1 \
	libgl1-mesa-glx libgl1-mesa-dri libgl1 breeze \
    --no-install-recommends && rm -rf /var/lib/apt/lists/* && apt-get clean
RUN wget -O clion.tar.gz "https://download.jetbrains.com/cpp/CLion-$CLION_VERSION.tar.gz" && \
    tar xfa clion.tar.gz && rm clion.tar.gz && mv "/clion-$CLION_VERSION/" "/clion"
ENTRYPOINT ["/clion/bin/clion.sh"]
