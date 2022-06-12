FROM ubuntu:22.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update
RUN apt install snapd

RUN snap --version
RUN snap install --classic kotlin
RUN rm -rf /var/lib/apt/lists/*

