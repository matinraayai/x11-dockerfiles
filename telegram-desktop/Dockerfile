FROM nvidia/opengl:1.2-glvnd-runtime-ubuntu20.04
LABEL maintainer="Matin Raayai Ardakani raayaiardakani.m@northeastern.edu"

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y telegram-desktop pulseaudio --no-install-recommends && \
 	apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
CMD ["telegram-desktop"]
