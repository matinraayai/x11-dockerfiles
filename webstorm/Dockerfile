FROM ubuntu:latest
LABEL maintainer="Matin Raayai Ardakani raayaiardakani.m@northeastern.edu"

ARG WEBSTORM_VERSION=2022.1.3
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get -y upgrade && apt-get install -y wget curl libxrender1 libxtst6 \
    libxtst-dev libxext-dev libxrender-dev libfreetype6-dev \
    libfontconfig1 ruby nodejs git ca-certificates \
    git libgtk-3-0 libglib2.0-0 libexpat1 libx11-6 libfontconfig1 \
    libgl1-mesa-glx libgl1-mesa-dri libgl1 npm libnss3 ruby3.0-dev

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt-get update && apt-get install yarn \
    --no-install-recommends && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN wget "https://download.jetbrains.com/webstorm/WebStorm-$WEBSTORM_VERSION.tar.gz" && \
    tar xfa "WebStorm-$WEBSTORM_VERSION.tar.gz" && rm "WebStorm-$WEBSTORM_VERSION.tar.gz" && \
    mv /WebStorm-*/ "/webstorm/"
ENTRYPOINT ["/webstorm/bin/webstorm.sh"]
