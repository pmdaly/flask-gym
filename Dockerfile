#FROM ubuntu
FROM python:3.8.2-buster

WORKDIR /app

ADD . /app

# System Reqs
RUN apt-get update -y
RUN apt-get install -y xvfb
RUN apt-get install -y x11-utils

# Python Reqs
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
RUN pip install PyOpenGL==3.1.* PyOpenGL-accelerate==3.1.*
RUN pip install box2d
