FROM fedora:26
MAINTAINER "Yu Xin" <scaner@gmail.com>

RUN \
dnf install -y \
  https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-26.noarch.rpm \
  https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-26.noarch.rpm && \
dnf update -y && \
dnf install -y openssh-server openssh-clients && \
dnf autoremove -y && \
dnf clean all

#dnf install -y ffmpeg handbrake mplayer mencoder && \

ENTRYPOINT ["/bin/bash"]
