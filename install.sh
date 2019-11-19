#!/bin/bash
#====================================================================
# aptのアップデート
#====================================================================
sudo mkdir /research
yes | sudo apt-get update
yes | sudo apt-get upgrade
yes | sudo apt remove python
yes | sudo apt install python3.8
yes | apt-get install -y software-properties-common
# --- (Option) Netanim animator ---
yes | apt-get install -y qt5-default mercurial
# --- (Option) Support for utils/check-style.py code style check program ---
yes | apt-get install uncrustify
# --- (Option) Support for Database support for statistics framework ---
yes | apt-get install sqlite sqlite3 libsqlite3-dev
# --- (Option) Xml-based version of the config store (requires libxml2 >= version 2.7) ---
yes | apt-get install libxml2 libxml2-dev
yes | apt-get install -y gdb valgrind
yes | apt-get autoremove
#cp -r ./file/ns-allinone-3.30.1 ./research/.
#cd $HOME/research/ns3
#python ./build.py

