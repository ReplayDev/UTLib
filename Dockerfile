FROM archlinux/base
RUN pacman -Syu --noconfirm vala meson libgee gobject-introspection
ADD . /root
