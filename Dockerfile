FROM ubuntu:22.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update -y && apt-get install unzip

COPY kscript-4.0.3-bin.zip kotlin.zip
RUN unzip kscript.zip
RUN mv kscript /opt/bin
COPY Hello.kts .
RUN kotlinc -script Hello.kts
#RUN apt update -y
#RUN apt install snapd -y && service snaptd start
#
#RUN snap --version
#RUN snap install --classic kotlin
#RUN rm -rf /var/lib/apt/lists/*

