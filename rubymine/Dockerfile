FROM ubuntu:latest
LABEL maintainer="Matin Raayai Ardakani raayaiardakani.m@northeastern.edu"

ARG RUBYMINE_VERSION=2020.2.3
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get -y upgrade && apt-get install -y wget libxrender1 libxtst6 \
    libxtst-dev libxext-dev libxrender-dev libfreetype6-dev \
    libfontconfig1 ruby nodejs git ca-certificates \
    git libgtk-3-0 libglib2.0-0 libexpat1 libx11-6 libfontconfig1 \
    libgl1-mesa-glx libgl1-mesa-dri libgl1 \
    --no-install-recommends && apt-get clean && rm -rf /var/lib/apt/lists/*
RUN wget "https://download.jetbrains.com/ruby/RubyMine-$RUBYMINE_VERSION.tar.gz" && \
    tar xfa "RubyMine-$RUBYMINE_VERSION.tar.gz" && rm "RubyMine-$RUBYMINE_VERSION.tar.gz" && \
    mv "/RubyMine-$RUBYMINE_VERSION/" "/rubymine/"
ENTRYPOINT ["/rubymine/bin/rubymine.sh"]