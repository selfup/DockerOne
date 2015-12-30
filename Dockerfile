FROM ubuntu:14.04

RUN chsh

RUN apt-get update && apt-get -y install python

RUN apt-get install git -y

RUN git clone https://github.com/selfup/DevOpsOne

RUN python DevOpsOne/setup_1.py

RUN python DevOpsOne/setup_2.py

RUN python DevOpsOne/setup_3.py

RUN exec $SHELL

RUN python DevOpsOne/install_ruby.py
