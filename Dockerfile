FROM python:3.10    

RUN apt update -y && \
  apt install -y rsync && \
  apt clean

RUN python3 -m pip install ansible-core==2.14.6
RUN ansible-galaxy install ansistrano.deploy,3.14.0 ansistrano.rollback,3.1.0
