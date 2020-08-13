FROM debian:bullseye-slim
LABEL maintainer="Matin Raayai Ardakani raayaiardakani.m@northeastern.edu"

RUN apt-get update && apt-get -y upgrade && \
    apt-get install -y python3-pip picard vlc pulseaudio breeze breeze-cursor-theme breeze-gtk-theme fonts-takao \
    --no-install-recommends && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN pip install setuptools wheel && pip install parse argparse
CMD ["picard"]
