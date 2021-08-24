FROM nvidia/opengl:1.2-glvnd-runtime-ubuntu20.04

LABEL maintainer="Matin Raayai Ardakani raayaiardakani.m@northeastern.edu"
ARG EDGE_VERSION=93.0.961.27-1

RUN apt-get update && apt-get upgrade -y wget ca-certificates fonts-liberation libasound2 \
		      libatk-bridge2.0-0 libatk1.0-0 libatomic1 libatspi2.0-0 libcairo2 \
		      libcups2 libdbus-1-3 libdrm2 libexpat1 libgdk-pixbuf2.0-0 \
		      libglib2.0-0 libgtk-3-0 libnspr4 libnss3 libpango-1.0-0 libx11-6 \
		      libx11-xcb1 libxcb1 libxcomposite1 libxdamage1 libxext6 libxfixes3 \
		      libxkbcommon0 libxrandr2 xdg-utils libcurl3-gnutls libcurl3-nss \
		      libcurl4 libxshmfence1 dbus --no-install-recommends
RUN wget https://packages.microsoft.com/repos/edge/pool/main/m/microsoft-edge-beta/microsoft-edge-beta_"$EDGE_VERSION"_amd64.deb
RUN dpkg -i microsoft-edge-beta_"$EDGE_VERSION"_amd64.deb

CMD ["microsoft-edge"]
