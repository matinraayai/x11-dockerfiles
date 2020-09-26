FROM nvidia/opengl:1.2-glvnd-runtime-ubuntu20.04
LABEL maintainer="Matin Raayai Ardakani raayaiardakani.m@northeastern.edu"
ARG DEBIAN_FRONTEND=noninteractive
ARG BLENDER_VERSION=2.90
ARG RELEASE_CYCLE=.1
RUN apt-get update && apt-get -y upgrade && \
    apt-get -y install wget xz-utils libxi6 breeze \
	libxrender1 ca-certificates --no-install-recommends && \
	apt-get clean && rm -rf /var/lib/apt/lists/*
RUN wget https://mirror.clarkson.edu/blender/release/Blender$BLENDER_VERSION/blender-$BLENDER_VERSION$RELEASE_CYCLE-linux64.tar.xz
RUN tar xvf "blender-$BLENDER_VERSION$RELEASE_CYCLE-linux64.tar.xz" && \
	rm "blender-$BLENDER_VERSION$RELEASE_CYCLE-linux64.tar.xz" && \
	mv "/blender-$BLENDER_VERSION$RELEASE_CYCLE-linux64/" "/blender"
CMD ["/blender/blender"]
