ARG     VARIANT="ubuntu-22.04"
FROM    mcr.microsoft.com/vscode/devcontainers/base:${VARIANT}

ARG     APTGET_OPTS="-y --no-install-recommends"

RUN     apt-get update && apt-get upgrade -y && export DEBIAN_FRONTEND=noninteractive

RUN     apt-get install ${APTGET_OPTS} ca-certificates gnupg gnupg2 pinentry-curses \
        && apt-get install ${APTGET_OPTS} build-essential curl wget \
        && apt-get install ${APTGET_OPTS} ruby-full \
        && apt-get install ${APTGET_OPTS} latexmk texlive texlive-xetex texlive-bibtex-extra
#         && apt-get install ${APTGET_OPTS} ffmpeg ghostscript graphviz pandoc
