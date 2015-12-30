FROM ubuntu:14.04

RUN cd root/

RUN apt-get update && apt-get -y install \
		python
		git

RUN git clone https://github.com/selfup/DevOpsOne

RUN python DevOpsOne/setup_1.py

RUN . .bashrc

RUN python DevOpsOne/setup_2.py

RUN . .bashrc && . .bash_profile

RUN python DevOpsOne/setup_3.py
