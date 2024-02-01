FROM    ubuntu:22.04

ARG     APTGET_OPTS="-y --no-install-recommends"

RUN     apt-get update && apt-get upgrade -y && export DEBIAN_FRONTEND=noninteractive

RUN     apt-get install ${APTGET_OPTS} texlive-full \
        && apt-get install ${APTGET_OPTS} python3-pip \
        && apt-get install ${APTGET_OPTS} ruby-full

#         && apt-get install ${APTGET_OPTS} ghostscript graphviz imagemagick pandoc

RUN     apt-get autoremove \
        || apt-get clean
