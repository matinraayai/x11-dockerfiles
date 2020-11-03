FROM nvidia/opengl:1.2-glvnd-runtime-ubuntu20.04
LABEL maintainer="Matin Raayai Ardakani raayaiardakani.m@northeastern.edu"

ARG DEBIAN_FRONTEND=noninteractive

# Install Dependencies
RUN apt-get update && apt-get upgrade -y wget libglib2.0-0 libxcb-shape0 libxcb-shm0 \
	libxcb-randr0 libxcb-image0 libfontconfig1 libgl1-mesa-glx libegl1-mesa \
	libxi6 libsm6 libxrender1 libpulse0 libxcomposite1 libxslt1.1 libsqlite3-0 \
	libxcb-keysyms1 libxcb-xtest0 libdbus-1-3 libxtst6 ibus libnss3 libasound2 \
	ca-certificates --no-install-recommends && rm -rf /var/lib/apt/lists/* && \
	apt-get clean
# Install Zoom
RUN wget https://zoom.us/client/latest/zoom_amd64.deb && \
    dpkg -i zoom_amd64.deb && rm zoom_amd64.deb
CMD ["zoom"]
