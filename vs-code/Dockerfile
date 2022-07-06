FROM ubuntu:focal
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get upgrade -y wget libnss3 libxkbfile1 libsecret-1-0 \
		      libgtk-3-0 libxss1 libgbm1 libxshmfence1 libasound2 gnupg libcurl3-gnutls libcurl4 libcurl3-nss libx11-xcb1 \
              && apt-get clean && rm -rf /var/lib/apt/lists/*
RUN wget "https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64" -O code.deb
RUN dpkg -i code.deb && rm code.deb
COPY run-code-and-wait-for-exit /run-code-and-wait-for-exit
CMD ["/run-code-and-wait-for-exit"]
