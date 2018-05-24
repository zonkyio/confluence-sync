# Dockerfile

FROM python:2-slim

WORKDIR /srv

RUN apt-get update ;\
    apt-get -y install curl git vim-tiny;\
    pip install mdtohtml

COPY update-confluence /usr/bin/update-confluence
COPY bashrc /etc/bash.bashrc
COPY vimrc /etc/vim/vimrc.tiny
COPY vimrc /etc/vim/vimrc