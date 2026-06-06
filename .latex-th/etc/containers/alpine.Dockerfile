FROM    alpine

ARG     APK_OPTS="--no-cache"

RUN     apk -U upgrade

# Install dependencies
RUN     apk add ${APK_OPTS} texlive-full \
            python3 \
            ruby \
            py3-pygments

# Useful packages
# RUN     apk add ${APK_OPTS} ghostscript graphviz imagemagick pandoc

# Cleanup
RUN     apk cache clean
