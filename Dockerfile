FROM ubuntu:21.10
RUN apt update && DEBIAN_FRONTEND=noninteractive apt install -y octave liboctave-dev
RUN apt install -y openjdk-8-jdk
COPY samiam30_linux_amd64.tar.gz /samiam30_linux_amd64.tar.gz
RUN update-alternatives --set java /usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java
RUN tar xzf /samiam30_linux_amd64.tar.gz
