FROM archlinux:latest
LABEL maintainer "Matin Raayai Ardakani raayaiardakani.m@northeastern.edu"

RUN pacman --noconfirm -Syu && pacman -S --noconfirm okular libreoffice-fresh wget sudo gtk3 libappimage
COPY ./squashfs-root /joplin/squashfs-root/
RUN chmod -R o=rx /joplin/
CMD ["/joplin/squashfs-root/AppRun"]
