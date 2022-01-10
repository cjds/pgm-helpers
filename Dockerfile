FROM ubuntu:21.10
RUN apt update && DEBIAN_FRONTEND=noninteractive apt install -y octave liboctave-dev
RUN apt install -y default-jdk
COPY samiam30_linux_amd64.tar.gz /samiam30_linux_amd64.tar.gz
RUN tar xzf /samiam30_linux_amd64.tar.gz
