FROM ubuntu:14.04

RUN chsh

RUN apt-get update && apt-get -y install python

RUN apt-get install git -y

RUN cd root/ && git clone https://github.com/selfup/DevOpsOne

RUN bash -l -c 'cd /root/ && python DevOpsOne/setup_1.py'

RUN bash -l -c 'cd root/ && python DevOpsOne/setup_2.py'

RUN bash -l -c 'cd root/ && python DevOpsOne/setup_3.py'

RUN exec $SHELL

RUN bash -l -c 'cd root/ && python DevOpsOne/install_ruby.py'

RUN bash -l -c 'cd root/ && eval export PATH="/root/.rbenv/shims:${PATH}"'

RUN cd root/ && echo export PATH="/root/.rbenv/shims:${PATH}" >> .bashrc

RUN cd root/ && echo export PATH="/root/.rbenv/shims:${PATH}" >> .bash_profile

RUN exec $SHELL

RUN cd root/ ruby -v

RUN bash -l -c 'cd root/ && python DevOpsOne/install_rest.py'
