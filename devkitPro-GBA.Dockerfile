FROM ubuntu:latest

# Disable any interactive actions.
ENV DEBIAN_FRONTEND noninteractive

# Needed variables for the devkitpro toolchain.
ENV DEVKITPRO /opt/devkitpro
ENV DEVKITARM /opt/devkitpro/devkitARM
ENV DEVKITPPC /opt/devkitpro/devkitPPC

RUN apt update
RUN apt install -y wget gdebi-core cmake ninja-build
RUN wget https://github.com/devkitPro/pacman/releases/download/v1.0.2/devkitpro-pacman.amd64.deb
RUN gdebi devkitpro-pacman.amd64.deb -n
RUN dkp-pacman -S gba-dev --noconfirm

VOLUME /root/env
WORKDIR /root/env