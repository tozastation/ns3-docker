FROM python:3.8.0-buster
RUN apt-get update && apt-get install -y software-properties-common
# --- (Option) Netanim animator ---
RUN apt-get update && apt-get install -y \
    qt5-default \
    mercurial

# --- (Option) Support for ns-3-pyviz visualizer ---
# RUN apt-get install -y \
#     gir1.2-goocanvas-2.0 \
#     python-gi \
#     python-gi-cairo \
#     python-pygraphviz \
#     python3-gi \
#     python3-gi-cairo \
#     python3-pygraphviz \
#     gir1.2-gtk-3.0 \
#     ipython \
#     ipython3

# --- (Option) Support for MPI-based distributed emulation ---
# RUN apt-get install -y \
#     openmpi-bin \
#     openmpi-common \
#     openmpi-doc \
#     libopenmpi-dev

# --- (Option) Support for bake build tool ---
# RUN apt-get install -y \
#     autoconf \
#     cvs \
#     bzr
# rar \
# unrar

# --- (Option) Support for utils/check-style.py code style check program ---
RUN apt-get -y install uncrustify
# --- (Option) Support for Database support for statistics framework ---
RUN apt-get -y install \
    sqlite \
    sqlite3 \
    libsqlite3-dev
# --- (Option) Xml-based version of the config store (requires libxml2 >= version 2.7) ---
RUN apt-get install -y \
    libxml2 \
    libxml2-dev
# --- (Option) Support for generating modified python bindings ---
# RUN apt-get install -y \
#     cmake \
#     libc6-dev \
#     libc6-dev-i386 \
#     libclang-6.0-dev \
#     llvm-6.0-dev \
#     automake \
#     python3 -m pip install --user cxxfilt
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
ENTRYPOINT ["/bin/bash"]

