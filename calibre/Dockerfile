FROM nvidia/opengl:1.2-glvnd-runtime-ubuntu20.04
LABEL maintainer="Matin Raayai Ardakani raayaiardakani.m@northeastern.edu"

ARG DEBIAN_FRONTEND=noninteractive
# Calibre Installation
RUN apt-get update && apt-get -y upgrade && \
    apt-get install -y wget sudo python curl \
    python3-pyqt5 xdg-utils xz-utils locales ca-certificates \
    libgtk-3-0 libglib2.0-0 libexpat1 libx11-6 libfontconfig1 \
    libgl1-mesa-glx libgl1-mesa-dri libgl1 breeze okular peruse \
    --no-install-recommends && rm -rf /var/lib/apt/lists/* && apt-get clean 
RUN echo 'deb http://download.opensuse.org/repositories/home:/selmf/xUbuntu_18.04/ /' | sudo tee /etc/apt/sources.list.d/home:selmf.list && \
    curl -fsSL https://download.opensuse.org/repositories/home:selmf/xUbuntu_18.04/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/home:selmf.gpg > /dev/null && \
    apt update && apt install -y yacreader


RUN sudo -v && wget --no-check-certificate -nv -O- \
    https://download.calibre-ebook.com/linux-installer.sh | sudo sh /dev/stdin

COPY local.conf /etc/fonts/local.conf
CMD ["calibre"]
