FROM nvidia/cuda:11.1-cudnn8-devel-ubuntu18.04
LABEL maintainer "Matin Raayai Ardakani raayaiardakani.m@northeastern.edu"

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get upgrade -y nvidia-nsight --no-install-recommends
# Theme, Icon and Font
RUN apt-get install -y libgtk-3-0 libglib2.0-0 libexpat1 libx11-6 libfontconfig1 \
	libgl1-mesa-glx libgl1-mesa-dri libgl1 --no-install-recommends && \
	 apt-get clean && rm -rf /var/lib/apt/lists/*
CMD ["nsight"]
