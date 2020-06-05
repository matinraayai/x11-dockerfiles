FROM nvidia/opengl:1.0-glvnd-runtime-ubuntu18.04
LABEL maintainer "Matin Raayai Ardakani raayaiardakani.m@northeastern.edu"

RUN apt-get update && apt-get install -y uget aria2 libgtk-3-0 breeze --no-install-recommends \
	&& rm -rf /var/lib/apt/lists/* && apt-get clean
CMD ["uget-gtk"]