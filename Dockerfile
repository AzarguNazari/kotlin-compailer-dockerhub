FROM ubuntu:22.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update -y
RUN apt install snapd -y && service snaptd start

RUN snap --version
RUN snap install --classic kotlin
RUN rm -rf /var/lib/apt/lists/*

