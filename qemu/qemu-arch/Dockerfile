FROM archlinux
LABEL maintainer "Matin Raayai Ardakani raayaiardakani.m@northeastern.edu"

RUN pacman -Syu --noconfirm && pacman -S --noconfirm qemu qemu-arch-extra qemu-block-gluster \
    qemu-block-iscsi qemu-block-rbd samba libvirt ebtables bridge-utils iproute2 \
    openbsd-netcat dmidecode spice-vdagent virt-manager edk2-ovmf dnsmasq && \
    pacman -Scc --noconfirm
COPY start.sh /start.sh
ENTRYPOINT ["/start.sh"]
