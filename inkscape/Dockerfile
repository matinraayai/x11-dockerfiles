FROM nvidia/opengl:1.2-glvnd-runtime-ubuntu20.04
LABEL maintainer="Matin Raayai Ardakani raayaiardakani.m@northeastern.edu"

ARG DEBAIN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y software-properties-common \
	libgtk-3-0 libglib2.0-0 libexpat1 libx11-6 libfontconfig1 \
	libgl1-mesa-glx libgl1-mesa-dri libgl1 --no-install-recommends && \
    add-apt-repository ppa:inkscape.dev/stable && \
    apt-get update && apt-get install -y inkscape --no-install-recommends && \
    rm -rf /var/lib/apt/lists/* && apt-get clean
CMD ["inkscape"]
