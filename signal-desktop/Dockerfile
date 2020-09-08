FROM ubuntu:latest
LABEL maintainer="Matin Raayai Ardakani raayaiardakani.m@northeastern.edu"

ARG DEBIAN_FRONTEND=noninteractive
# Pre-reqs Installation
RUN apt-get update && apt-get -y upgrade && \
    apt-get install -y curl ca-certificates gnupg2 libx11-xcb1 libgtk-3-0 breeze --no-install-recommends
# Install Signal
RUN curl -s https://updates.signal.org/desktop/apt/keys.asc | apt-key add - && \
    echo "deb [arch=amd64] https://updates.signal.org/desktop/apt xenial main" | tee -a \
    /etc/apt/sources.list.d/signal-xenial.list && \
    apt-get update && apt-get install -y signal-desktop --no-install-recommends && \
	apt-get clean && rm -rf /var/lib/apt/lists/*
CMD ["signal-desktop"]
