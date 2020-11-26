FROM postgres:12.3

LABEL description="Image for stepik Free dive into databases course" \
      maintainer="Norbert Nemesh <norbertnemesh@gmail.com>"

# Install all the things!
RUN apt-get update && \
    # give access to sudo
    apt-get install -y sudo && \
    # notorious text editor
    apt-get install -y vim && \
    # code version control
    apt-get install -y git && \
    # terminal multiplexer
    apt-get install -y tmux && \
    # Ensure that excessive files are deleted
    # https://github.com/tianon/docker-brew-ubuntu-core/issues/122#issuecomment-495332014
    rm -r /var/lib/apt/lists/*
