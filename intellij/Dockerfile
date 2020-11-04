FROM ubuntu:latest
LABEL maintainer "Matin Raayai Ardakani raayaiardakani.m@northeastern.edu"

ARG IDEA_VERSION=2020.2.3
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y wget libxrender1 libxtst6 ca-certificates \
    libxtst-dev libxext-dev libxrender-dev libfreetype6-dev \
    libfontconfig1 git cmake libgtk-3-0 libglib2.0-0 libexpat1 libx11-6 libfontconfig1 \
    libgl1-mesa-glx libgl1-mesa-dri libgl1 sudo scala openjdk-14-jdk \
    openjdk-14-jre-headless --no-install-recommends \
    && apt-get clean && rm -rf /var/lib/apt/lists/* 
RUN wget -O idea.tar.gz https://download-cf.jetbrains.com/idea/ideaIU-$IDEA_VERSION.tar.gz && \
    tar xfa idea.tar.gz && rm idea.tar.gz && mv /idea-IU-*/ "/idea/"
ENTRYPOINT ["/idea/bin/idea.sh"]
