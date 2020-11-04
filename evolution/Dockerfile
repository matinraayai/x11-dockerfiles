FROM nvidia/opengl:1.2-glvnd-runtime-ubuntu20.04
LABEL maintainer "Matin Raayai Ardakani raayaiardakani.m@northastern.edu"

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get -y upgrade --no-install-recommends \
	evolution dbus xorg libgtk-3-0 libasound2 libglib2.0-0 libexpat1 libx11-6 \
    libfreetype6 libfontconfig1 libasound2 libgl1 libqt5opengl5 libgl1-mesa-dri \
    libgl1-mesa-glx evolution-ews evolution-rss kdocker gpg gpg-agent && \
    rm -rf /var/lib/apt/lists/* && apt-get clean

CMD ["kdocker evolution"]
