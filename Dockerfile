# ---
FROM python:3.8.0-buster
RUN apt-get update && apt-get install -y software-properties-common
RUN apt-get update && apt-get install -y \
    qt5-default \
    mercurial

RUN apt-get install -y \
    gir1.2-goocanvas-2.0 \
    python-gi \
    python-gi-cairo \
    python-pygraphviz \
    python3-gi \
    python3-gi-cairo \
    python3-pygraphviz \
    gir1.2-gtk-3.0 \
    ipython \
    ipython3

RUN apt-get install -y \
    openmpi-bin \
    openmpi-common \
    openmpi-doc \
    libopenmpi-dev

RUN apt-get install -y \
    autoconf \
    cvs \
    bzr
#rar \
#unrar

RUN apt-get install -y \
    gdb \
    valgrind

RUN apt-get autoremove
# Set Environment Variable
ENV NS3_FILE_PATH='/research/ns3'
# Setup Devenv
WORKDIR /research/ns3
COPY ./file/ns-allinone-3.30.1 .
RUN python ./build.py

