FROM nvidia/cudagl:10.2-runtime-ubuntu18.04
LABEL maintainer "Matin Raayai Ardakani raayaiardakani.m@northeastern.edu"

ARG DEBIAN_FRONTEND=noninteractive
# Time Zone Configuration:
RUN rm -rf /etc/localtime && ln -s /usr/share/zoneinfo/US/New_York /etc/localtime
# Install Latest Version of OVMF:
RUN apt-get update && apt-get install -y wget && \
    latest_ovmf_package_link=$(wget http://archive.ubuntu.com/ubuntu/pool/universe/e/edk2 -O- | perl -ne 'print "$1\n" if /"(ovmf.+deb)"/' | tail -n 1) && \
    wget "http://archive.ubuntu.com/ubuntu/pool/universe/e/edk2/$latest_ovmf_package_link" -O ovmf.deb && \
    dpkg -i ovmf.deb && rm ovmf.deb
# QEMU/KVM Dependencies + useful utilities:
RUN  apt-get -y install --no-install-recommends qemu-kvm libvirt-clients \
    libvirt-daemon-system bridge-utils libvirglrenderer0 libvdeplug2 \
    libsdl2-2.0-0 libgtk-3-0 libvte-2.91-0 glusterfs-common libssh2-1 \
    liblzo2-2 libsnappy1v5 libpmem1 pulseaudio sudo virt-manager dbus \
    dbus-x11 iproute2 dnsmasq-base qemu-block-extra qemu-efi \
    qemu-efi-aarch64 qemu-slof qemu-user-binfmt dnsmasq-base \
    firewalld ebtables gir1.2-spiceclientgtk-3.0 spice-vdagent \
    freerdp2-x11 dmidecode libnfs11 autoconf automake autotools-dev curl \
    libmpc-dev libmpfr-dev libgmp-dev gawk build-essential bison flex texinfo \
    gperf libtool patchutils bc zlib1g-dev libexpat-dev xserver-xorg-video-qxl
# Useful utilites to have in the container + clean the apt repo:
RUN apt-get -y install git vim breeze kdocker \
    --no-install-recommends && apt-get clean && \
    rm -rf /var/lib/apt/lists/*
# Pre-built QEMU
COPY qemu_4.1.0_amd64.deb /qemu_4.1.0-1_amd64.deb
RUN dpkg -i --force-all qemu_4.1.0-1_amd64.deb && rm qemu_4.1.0-1_amd64.deb 
COPY ./start.sh /start.sh 
ENTRYPOINT ["/start.sh"]
