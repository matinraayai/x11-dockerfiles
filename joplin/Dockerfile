FROM archlinux:latest
LABEL maintainer "Matin Raayai Ardakani raayaiardakani.m@northeastern.edu"

RUN pacman --noconfirm -Syu && \
    pacman -S --noconfirm wget sudo gtk3 libappimage fontconfig nss
							
COPY ./squashfs-root /joplin/squashfs-root/
RUN chmod -R o=rx /joplin/
CMD ["/joplin/squashfs-root/AppRun"]
