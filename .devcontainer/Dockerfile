FROM    registry.gitlab.com/islandoftex/images/texlive:latest

ARG     USER=texlive

RUN     apt-get update \
        && apt-get install -y sudo \
        && echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers \
        && usermod -aG sudo ${USER}

RUN     mkdir -p /usr/local/share/fonts
COPY    assets/fonts/* /usr/local/share/fonts/
RUN     fc-cache -f

USER    ${USER}
WORKDIR /home/${USER}
