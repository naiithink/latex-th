FROM    ubuntu:22.04

ARG     APTGET_OPTS="-y --no-install-recommends"

RUN     apt-get update && apt-get upgrade -y && export DEBIAN_FRONTEND=noninteractive

RUN     apt-get install ${APTGET_OPTS} ca-certificates gnupg gnupg2 pinentry-curses \
        && apt-get install ${APTGET_OPTS} build-essential curl wget \
        && apt-get install ${APTGET_OPTS} ruby-full \
        && apt-get install ${APTGET_OPTS} latexmk texlive texlive-xetex
#         && apt-get install ${APTGET_OPTS} ffmpeg ghostscript graphviz pandoc
