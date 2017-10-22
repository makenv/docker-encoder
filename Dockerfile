FROM fedora:26
MAINTAINER "Yu Xin" <scaner@gmail.com>

RUN \
dnf install -y \
  https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-26.noarch.rpm \
  https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-26.noarch.rpm && \
dnf install -y openssh-server openssh-clients && \
dnf install -y ffmpeg handbrake mplayer mencoder && \
dnf update -y && \
dnf autoremove -y && \
dnf clean all

RUN mkdir /ws /w /o /is

VOLUME ["/ws", "/w", "/o", "/is"]


#ENTRYPOINT ["/bin/bash"]
