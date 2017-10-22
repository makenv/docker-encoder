FROM fedora:26
MAINTAINER "Yu Xin" <scaner@gmail.com>

RUN \
dnf install -y \
  https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-26.noarch.rpm \
  https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-26.noarch.rpm
RUN dnf install -y openssh-server openssh-clients
RUN dnf install -y ffmpeg handbrake mplayer mencoder
RUN dnf autoremove
RUN dnf clean all

ENTRYPOINT ["/bin/bash"]
