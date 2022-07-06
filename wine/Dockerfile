FROM nvidia/opengl:1.2-glvnd-runtime
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y wget ca-certificates --no-install-recommends
RUN wget -nc https://dl.winehq.org/wine-builds/winehq.key && mv winehq.key /usr/share/keyrings/winehq-archive.key
RUN wget -nc https://dl.winehq.org/wine-builds/ubuntu/dists/focal/winehq-focal.sources &&  mv winehq-focal.sources /etc/apt/sources.list.d/
RUN apt-get update && apt install -y --install-recommends winehq-stable && apt-get clean && rm -rf /var/lib/apt/lists/*

