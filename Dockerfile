#FROM ubuntu
FROM python:3.8.2-buster

WORKDIR /app

ADD . /app

# System Reqs
RUN apt-get update -y
RUN apt-get install -y xvfb
RUN apt-get install -y x11-utils
RUN apt-get install -y vim
RUN apt-get install -y swig

# Something in here fixed the container -> server -> local forwarding issue...
#   dunno which tho...
RUN apt-get update \
     && apt-get install -y --no-install-recommends \
        apt-utils \
        build-essential \
        g++  \
        git  \
        curl  \
        cmake \
        zlib1g-dev \
        libjpeg-dev \
        xvfb \
        xorg-dev \
        libboost-all-dev \
        libsdl2-dev \
        libopenblas-base  \
        cython3  \
     && apt-get clean \
     && rm -rf /var/lib/apt/lists/*

# Python Reqs
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
RUN pip install PyOpenGL==3.1.* PyOpenGL-accelerate==3.1.*
