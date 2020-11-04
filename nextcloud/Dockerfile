FROM nvidia/opengl:1.2-glvnd-runtime-ubuntu20.04
LABEL maintainer="Matin Raayai Ardakani raayaiardakani.m@northeastern.edu"

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get -y upgrade && apt-get install -y \
    software-properties-common libglib2.0-0 libexpat1 libx11-6 \
    libfreetype6 libfontconfig1 libasound2 libgl1 libqt5opengl5 libgl1-mesa-dri \
    libegl-mesa0 libgl1-mesa-glx firefox --no-install-recommends && \
    add-apt-repository ppa:nextcloud-devs/client && apt-get update && \
    apt-get install -y nextcloud-client --no-install-recommends \
    && rm -rf /var/lib/apt/lists/* && apt-get clean
CMD ["nextcloud"]