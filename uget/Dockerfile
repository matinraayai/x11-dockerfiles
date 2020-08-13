FROM debian:bullseye-slim
LABEL maintainer "Matin Raayai Ardakani raayaiardakani.m@northeastern.edu"

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get upgrade -y && apt-get install -y uget aria2 libgtk-3-0 breeze --no-install-recommends \
	&& rm -rf /var/lib/apt/lists/* && apt-get clean
CMD ["uget-gtk"]
