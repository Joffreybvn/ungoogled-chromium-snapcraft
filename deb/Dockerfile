FROM ubuntu:20.04
LABEL maintainer = "Joffrey Bienvenu <joffreybvn@gmail.com>"

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Europe/Moscow

RUN apt-get update \

    # Chromium building dependencies
    && apt-get install -y wget x11-utils xdg-utils \
    libasound2 libatk-bridge2.0-0 libatk1.0-0 libatomic1 libatspi2.0-0 \
    libcairo-gobject2 libcairo2 libcups2 libgdk-pixbuf2.0-0 \
    libgtk-3-0 libnspr4 libnss3 libpango-1.0-0 libpangocairo-1.0-0 \
    libpci3 libpulse0 libva2 libxkbcommon0 \

    # Chromium running dependencies
    lsb-release \

    # Clean the cache, remove useless files
    && apt-get clean all \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /workspace