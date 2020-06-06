FROM archlinux:latest
RUN pacman --noconfirm -Syu && pacman -S --noconfirm okular libreoffice-fresh wget sudo gtk3 libappimage
COPY ./squashfs-root /joplin/squashfs-root/
RUN chmod -R o=rx /joplin/
CMD ["/joplin/squashfs-root/AppRun"]
