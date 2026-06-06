FROM    registry.gitlab.com/islandoftex/images/texlive:latest

RUN     mkdir -p /usr/local/share/fonts
COPY    assets/fonts/* /usr/local/share/fonts/
RUN     fc-cache -f

COPY    resources/fonts/fontspec/* /usr/local/texlive/texmf-local/tex/latex/local/
RUN     mktexlsr

USER    texlive
WORKDIR /home/texlive
