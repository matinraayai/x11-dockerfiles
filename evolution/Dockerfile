FROM nvidia/opengl:1.0-glvnd-runtime-ubuntu18.04
LABEL maintainer "Matin Raayai Ardakani raayaiardakani.m@northastern.edu"

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get -y install --no-install-recommends \
	evolution dbus xorg libgtk-3-0 libasound2 libglib2.0-0 libexpat1 libx11-6 \
    libfreetype6 libfontconfig1 libasound2 libgl1 libqt5opengl5 libgl1-mesa-dri \
    libgl1-mesa-glx breeze evolution-ews evolution-rss kdocker && \
    rm -rf /var/lib/apt/lists/* && apt-get clean
CMD ["kdocker evolution"]
