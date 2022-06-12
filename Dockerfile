FROM ubuntu:22.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN rm /bin/sh && ln -s /bin/bash /bin/sh
RUN apt-get -qq -y install curl wget unzip zip
RUN curl -s "https://get.sdkman.io" | bash
RUN source "$HOME/.sdkman/bin/sdkman-init.sh"
RUN sdk install kotlin
RUN sdk install kscript
COPY Hello.kts .
RUN kotlinc -script Hello.kts
#RUN apt update -y
#RUN apt install snapd -y && service snaptd start
#
#RUN snap --version
#RUN snap install --classic kotlin
#RUN rm -rf /var/lib/apt/lists/*

