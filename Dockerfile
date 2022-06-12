FROM ubuntu:22.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update -y && \
    apt install snapd && \
    snap install --classic kotlin && \
    rm -rf /var/lib/apt/lists/*

