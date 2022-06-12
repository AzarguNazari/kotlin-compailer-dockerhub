FROM ubuntu:22.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get -y upgrade && \
    apt-get install -y snap snapd


RUN snap install --classic kotlin && \
    rm -rf /var/lib/apt/lists/*

