FROM ubuntu:latest
LABEL maintainer="Matin Raayai Ardakani raayaiardakani.m@northeastern.edu"

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y firefox pulseaudio \
    fonts-noto fonts-noto-cjk \
    --no-install-recommends \
	&& rm -rf /var/lib/apt/lists/* && apt-get clean 
COPY local.conf /etc/fonts/local.conf
CMD ["firefox"]